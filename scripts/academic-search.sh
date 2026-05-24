#!/usr/bin/env bash
# academic-search.sh — Query academic APIs for primary papers on a topic.
#
# Wraps OpenAlex + Semantic Scholar + PubMed sequentially. Returns the strongest
# (most-cited or most-recent) primary paper per API as JSON. Used by the
# deep-research agent BEFORE WebSearch for claim types where peer-reviewed
# sources are likely (prevalence, incidence, mortality, market size, CAGR,
# adoption rate, disease epidemiology).
#
# Usage:
#   ./scripts/academic-search.sh "diabetes prevalence Indonesia 2024"
#   ./scripts/academic-search.sh --max 3 "cargo theft Southeast Asia"
#
# Output: JSON array of primary papers, one per successful API call.
# Empty array if no API returned a relevant paper (deep-research should then
# fall back to WebSearch).
#
# Relevance criteria per paper:
#   - has DOI
#   - either citation_count ≥ 5 OR published within last 3 years
#
# Schema (one entry per result):
#   {
#     "doi": "10.1234/...",
#     "title": "...",
#     "year": 2024,
#     "citation_count": 42,
#     "abstract_snippet": "first 500 chars",
#     "api_source": "openalex|semantic_scholar|pubmed",
#     "url": "https://doi.org/<DOI>"
#   }

set -uo pipefail

MAX_RESULTS=3
QUERY=""
while [ $# -gt 0 ]; do
  case "$1" in
    --max) MAX_RESULTS="$2"; shift 2 ;;
    -h|--help)
      sed -n '2,30p' "$0" | sed 's/^# \?//'
      exit 0 ;;
    *) QUERY="$1"; shift ;;
  esac
done

[ -z "$QUERY" ] && { echo "ERROR: query string required" >&2; exit 1; }

command -v curl >/dev/null || { echo "ERROR: curl missing" >&2; exit 1; }
command -v jq   >/dev/null || { echo "ERROR: jq missing"   >&2; exit 1; }

CURRENT_YEAR=$(date +%Y)
RECENT_CUTOFF=$((CURRENT_YEAR - 3))

# URL-encode the query
QUERY_ENC=$(printf '%s' "$QUERY" | jq -sRr @uri)

# ---------------------------------------------------------------------------
# OpenAlex — https://api.openalex.org/works
# Free, no key. Returns DOI-anchored citation-ranked papers.
# ---------------------------------------------------------------------------
search_openalex() {
  local resp
  resp=$(curl -s --max-time 10 \
    "https://api.openalex.org/works?search=${QUERY_ENC}&per-page=${MAX_RESULTS}&sort=cited_by_count:desc&filter=has_doi:true" \
    -H "User-Agent: overnight-research/academic-search.sh (research@wright-partners.com)" \
    2>/dev/null) || return 1
  [ -z "$resp" ] && return 1
  echo "$resp" | jq --argjson cutoff "$RECENT_CUTOFF" \
    --arg api "openalex" '
    .results // [] | map(
      select(.doi != null) |
      {
        doi: (.doi | sub("https?://doi.org/"; "")),
        title: (.title // ""),
        year: (.publication_year // 0),
        citation_count: (.cited_by_count // 0),
        abstract_snippet: (
          .abstract_inverted_index // {} |
          to_entries |
          sort_by(.value[0]) |
          map(.key) |
          join(" ") |
          .[0:500]
        ),
        api_source: $api,
        url: ("https://doi.org/" + (.doi | sub("https?://doi.org/"; "")))
      } |
      select(.citation_count >= 5 or .year >= $cutoff)
    )' 2>/dev/null || return 1
}

# ---------------------------------------------------------------------------
# Semantic Scholar — https://api.semanticscholar.org/graph/v1/paper/search
# Free, optional key. Returns DOI + abstract + tldr.
# ---------------------------------------------------------------------------
search_semantic_scholar() {
  local resp
  resp=$(curl -s --max-time 10 \
    "https://api.semanticscholar.org/graph/v1/paper/search?query=${QUERY_ENC}&limit=${MAX_RESULTS}&fields=title,year,citationCount,externalIds,abstract,tldr" \
    2>/dev/null) || return 1
  [ -z "$resp" ] && return 1
  echo "$resp" | jq --argjson cutoff "$RECENT_CUTOFF" \
    --arg api "semantic_scholar" '
    .data // [] | map(
      select(.externalIds.DOI != null) |
      {
        doi: .externalIds.DOI,
        title: (.title // ""),
        year: (.year // 0),
        citation_count: (.citationCount // 0),
        abstract_snippet: ((.tldr.text // .abstract // "") | .[0:500]),
        api_source: $api,
        url: ("https://doi.org/" + .externalIds.DOI)
      } |
      select(.citation_count >= 5 or .year >= $cutoff)
    )' 2>/dev/null || return 1
}

# ---------------------------------------------------------------------------
# PubMed — eutils.ncbi.nlm.nih.gov esearch + efetch
# Free. Returns PMID then we fetch summary.
# ---------------------------------------------------------------------------
search_pubmed() {
  local pmids
  pmids=$(curl -s --max-time 10 \
    "https://eutils.ncbi.nlm.nih.gov/entrez/eutils/esearch.fcgi?db=pubmed&term=${QUERY_ENC}&retmax=${MAX_RESULTS}&retmode=json&sort=relevance" \
    2>/dev/null | jq -r '.esearchresult.idlist // [] | join(",")' 2>/dev/null) || return 1
  [ -z "$pmids" ] && return 1

  local summary
  summary=$(curl -s --max-time 10 \
    "https://eutils.ncbi.nlm.nih.gov/entrez/eutils/esummary.fcgi?db=pubmed&id=${pmids}&retmode=json" \
    2>/dev/null) || return 1
  [ -z "$summary" ] && return 1

  echo "$summary" | jq --argjson cutoff "$RECENT_CUTOFF" \
    --arg api "pubmed" '
    [.result.uids // [] | .[] as $pmid |
      .result[$pmid] |
      (.articleids // [] | map(select(.idtype == "doi")) | .[0].value) as $doi |
      select($doi != null and $doi != "") |
      {
        doi: $doi,
        title: (.title // ""),
        year: ((.pubdate // "0") | capture("(?<y>[0-9]{4})").y | tonumber? // 0),
        citation_count: 0,
        abstract_snippet: "",
        api_source: $api,
        url: ("https://doi.org/" + $doi),
        pmid: $pmid
      } |
      select(.year >= $cutoff)
    ]' 2>/dev/null || return 1
}

# ---------------------------------------------------------------------------
# Aggregate
# ---------------------------------------------------------------------------
RESULTS="[]"
for fn in search_openalex search_semantic_scholar search_pubmed; do
  out=$($fn 2>/dev/null) || out="[]"
  [ -z "$out" ] && out="[]"
  # Validate it's a JSON array
  echo "$out" | jq -e 'type == "array"' >/dev/null 2>&1 || out="[]"
  RESULTS=$(jq -n --argjson a "$RESULTS" --argjson b "$out" '$a + $b')
done

# Deduplicate by DOI (keep highest citation_count + most recent)
DEDUPED=$(echo "$RESULTS" | jq '
  group_by(.doi) |
  map(
    sort_by(-(.citation_count // 0), -(.year // 0)) | .[0]
  ) |
  sort_by(-(.citation_count // 0), -(.year // 0))
')

# Trim to MAX_RESULTS overall
FINAL=$(echo "$DEDUPED" | jq --argjson n "$MAX_RESULTS" '.[0:$n]')

echo "$FINAL"
