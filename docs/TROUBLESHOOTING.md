# Troubleshooting

## Token / rate / usage limit handling

The skill writes checkpoint files at every stage transition (`pass-0-plan.md`, `pass-1-drafts/`, `pass-2-validation/`, etc.) plus `checkpoint.json` tracking which stages are complete. **If the run is interrupted (token limit, rate limit, account usage limit, manual kill, network error), the checkpoint preserves what's been done.**

### How to detect interruption

Run `./scripts/verify.sh` after a run. It checks two signals:

1. Log file content for known limit error patterns (`context length exceeded`, `rate limit`, `429`, `usage limit`, `message limit`, `prompt is too long`)
2. `checkpoint.json` showing `final_gate_decision: null` AND missing `RUN-COMPLETE.txt`

If either fires, verify reports:
```
⚠ Run interrupted (token/rate/usage limit detected)  smoke-test-20260430-2200.log
⚠ Run incomplete (pass 3, 2 stages done)             RUN-COMPLETE.txt missing

  → To resume from checkpoint, run:
    cd /your/repo && ./scripts/resume.sh
```

### How to resume

```bash
./scripts/resume.sh
```

Auto-detects the most recent incomplete run, reads its checkpoint, and re-invokes claude with explicit "resume from checkpoint" instruction. The skill's **Step 0.6 (Resume detection)** reads checkpoint, skips already-completed stages, and continues from where it left off.

Behavior:
- Stages already in `stages_completed` are skipped
- Stage that was in progress (`stages_in_progress[0]`) is restarted fresh (partial output discarded — safer than trying to salvage interrupted state)
- Each completed stage updates checkpoint, so subsequent resumes continue from the new latest

If `resume.sh` reports "No incomplete runs found", the most recent run completed successfully. Use `run-headless.sh` for a new fresh run.

### What if I want a fresh run despite an incomplete checkpoint?

The skill honors a `--fresh` flag in the prompt:

```bash
caffeinate -i nohup claude --print --dangerously-skip-permissions \
  "Run the overnight-research skill on ./input/your-topic.txt --fresh" \
  > overnight.log 2>&1 &
```

Skip checkpoint, generate new run-id, start from scratch.

### Why does this matter for production overnight runs?

Full overnight runs hit:

- **Output token per turn (~8K)** — a single sub-agent invocation might truncate; rare but possible
- **Context window (200K Sonnet)** — accumulating sub-agent context across passes can approach this on very heavy runs
- **Account usage limit** — Claude Pro has 5-hour message budget; API has dollar limits that hit on long runs
- **Rate limit** — peak hour API usage can hit per-minute rate limits

The skill's vertical-slice architecture HELPS here: each stage is small and self-contained, so interruption mid-stage loses at most one stage's work, not the whole run.

### Cost protection

To cap cost on full runs, pass `--max-cost`:

```bash
claude --print --dangerously-skip-permissions \
  "Run the overnight-research skill on ./input/your-topic.txt --max-cost 50" \
  > overnight.log 2>&1 &
```

Skill respects the cap as a soft limit — when reached, it forces final pass with whatever stages are validated and writes outputs marked as `[INCOMPLETE — cost cap]`.

---

## Setup issues

### `gh: command not found`
Install: `brew install gh && gh auth login`

### `jq: command not found`
Install: `brew install jq`. Required for cache layer.

### `markitdown: command not found`
Install: `pip install markitdown --user`. Required for PDF source processing.

If `pip` not found: `brew install python3` first.

### `setup.sh` fails on `gh repo clone`
- `gh auth status` to verify auth
- Run `gh auth login` if not authenticated
- Confirm you have read access to `Wright-Partners` org private repos

### `claude /status` reports not logged in
Run `claude /login`.

### WebSearch / WebFetch fail in skill
In claude session, run `/permissions` and enable WebSearch + WebFetch.

---

## Skill execution issues

### Skill stops with `BLOCKED.md` immediately

Means input file is fuzzy or missing required fields.

Open `BLOCKED.md` — it lists exactly what's missing and how to fix.

Common causes:
- Topic too vague ("AI in healthcare" → need specific application)
- Hypothesis is just a question, not a claim
- Scope only has "in" without "out"
- Working hypotheses missing or only 1 candidate

Fix the input file, re-run. **Do not** try to override with `[ASSUMED]` tags on input scope — the skill explicitly refuses to proceed past Step 1 with fuzzy input. That's intentional.

### Skill stops with `ABORTED.md` after Stage 1

Means Stage 1 vertical slice failed (couldn't find 3 metrics, couldn't write 2 pain points).

Open `ABORTED.md` — it explains what failed.

Common causes:
- Topic too narrow — no public source coverage at this depth
- Geography too narrow — country has insufficient public data
- Working hypothesis has no public evidence (everything is proprietary)

Options:
- Widen scope (more sectors, more countries) and re-run
- Accept that this topic requires primary field research, not desktop
- Add `--depth shallow` arg (future feature) for less ambitious targets

### Skill runs but output is empty or near-empty

Likely cause: WebSearch returned nothing useful.

Check log: did sub-agents actually fire WebSearch? If yes but results were sparse, topic genuinely lacks public coverage. If no WebSearch at all, skill execution broke — file a bug.

### Skill runs but takes way longer than expected

Default cap is 4 hours. Expected runtime for full run: 2-3 hours.

If hitting 4 hours, check:
- Is markitdown installed? (Without it, skill might be retrying PDF fetches that always fail)
- Is cache layer working? (Without jq, every fetch is fresh)
- Is the topic unusually broad? (More stages = more time)

Override cap with `CACHE_TTL_DAYS=7` and `--max-runtime 360` (in minutes).

### Skill's gate says "Re-run recommended" every time

Gate triggers when >70% of claims are Low confidence. If this happens consistently:

- Topic genuinely has thin public coverage (need primary field research)
- Source priority enforcement is too strict (rare — but if so, skill spec needs tuning)
- Inputs are too ambitious for desktop scope

Check `re-run-recommended.md` for specifics on what would need to change.

---

## Output quality issues

### Pain points read like bullet point lists, not structured analysis

Likely cause: pain-point-researcher agent's output didn't match IMI structure.

Check:
- Was `.claude/refs/imi-pain-points-template.md` loaded? Verify in log.
- Did the agent honor the format spec? Re-read agent's `.claude/agents/pain-point-researcher.md`.

Fix: make sure refs are loaded (`./scripts/setup.sh`). If still failing, the agent's prompt may need tightening — file an issue.

### Citations are mostly to one website

Likely cause: source-validator's "single domain" override didn't trigger, OR sub-agents over-relied on one source.

Check: open `pass-2-validation/stage-N.json` for that stage. Did source-validator flag the over-reliance? If yes but the orchestrator didn't remediate, the skill spec needs tightening.

### % Low confidence is much higher than expected

This isn't necessarily a failure — it's the skill being honest.

Check the breakdown:
- If most Low claims are cost figures from coalbiomassboiler.com (or similar): confirms single-trade-source override working as designed. Real fix: find primary cost data via field interviews.
- If most Low claims are market sizing tagged `Geography mismatch`: confirms APAC-as-proxy override working. Real fix: country-specific stats (BPS, MIDA, NSO).
- If everything is Low: input scope might be too narrow for public data to cover well.

The skill's job is to honest about source quality. High Low% means "you need primary research", not "the skill is broken."

---

## Cache issues

### `cache-stats.sh` reports zero entries after a run

Likely cause: `fetch-with-cache.sh` failed (jq missing, path resolution failed) and skill silently fell back to direct WebFetch without populating cache.

Check:
- `which jq` returns a path
- `.claude/cache/sources/index.json` exists and is valid JSON: `jq . .claude/cache/sources/index.json`
- `chmod +x .claude/cache/fetch-with-cache.sh`

### Cache size growing unboundedly

Cache TTL is 30 days but old entries don't auto-delete (only excluded from reads).

Manual cleanup:
```bash
# Clear everything older than 30 days
find .claude/cache/sources -type f -mtime +30 -delete

# Or nuke the whole cache
rm -rf .claude/cache/sources/*
echo "{}" > .claude/cache/sources/index.json
```

---

## Mac-specific issues

### Mac sleeps during overnight run

Open System Settings → Battery → "Prevent automatic sleeping when display is off" → ON.

For Mac Mini (no battery section):
System Settings → Energy → "Prevent app nap" or similar.

### "Mac is using a lot of energy" notification during run

Expected during long Claude Code sessions. Skill is doing real work.

If concerning, check Activity Monitor for `claude` process — should be moderate CPU, not pinning all cores.

### Run continues after laptop close

Headless mode (`run-headless.sh`) wraps the call as:

```bash
caffeinate -i nohup claude --print --dangerously-skip-permissions \
  "Run the overnight-research skill on $INPUT" > run.log 2>&1 &
```

- `caffeinate -i` keeps Mac awake during run
- `nohup` lets process survive terminal close
- `&` backgrounds the process

Verify: open laptop next morning. Should see `RUN-COMPLETE.txt` if it finished.

If Mac slept anyway: System Settings → Battery → "Prevent automatic sleeping when display is off" = ON.

For Mac Mini (no battery section): the `caffeinate` command should be sufficient, but also check System Settings → Energy.

---

## About `--dangerously-skip-permissions`

The `run-headless.sh` script uses `--dangerously-skip-permissions`. Here's the trade-off.

**Why it's needed:** Without this flag, claude prompts for confirmation on every tool call (WebFetch URL, Bash command, Write file). For overnight unattended runs, prompts cause the process to stall — claude waits forever for input that never comes.

**What you lose:** Safety net of "Hey claude wants to delete folder X — ok?" dialogs.

**Why it's relatively safe for this skill:**

1. The skill spec is yours (or WP's). You can read `.claude/skills/overnight-research/SKILL.md` and audit what it'll do. No third-party code.

2. Sub-agents have YAML-defined tool restrictions. Example: `source-validator` agent has `tools: Read, Grep, Glob, WebSearch, Bash` — no `Write` or `Edit`. It physically cannot modify files even if asked.

3. Skill is sandboxed by file-path convention: writes only to `./output/raw-claude-overnight/`, reads from `.claude/refs/`. Doesn't touch system folders or other projects.

4. No `rm -rf` patterns in any skill or agent spec.

5. Worst-case: an output folder gets corrupted. Delete and re-run. Your engagement repos are unaffected.

**When you should NOT use the flag:**

- Running someone else's untrusted skill
- Skill has access to production systems
- Working directory has critical files without backup
- You haven't read the skill spec yourself

For the package-boilers test case in this repo, the flag is acceptable risk. For future skills with broader scope (financial system access, deployment automation, etc.), reconsider.

**Alternative: pre-allowlist tools**

You can pre-allowlist specific tools without `--dangerously-skip-permissions`:

```bash
claude --print \
  --allowed-tools "Read,Write,Edit,Bash,WebSearch,WebFetch,Agent,Glob,Grep" \
  "Run the overnight-research skill..."
```

But this only helps if you can enumerate every tool the skill might use. With sub-agents that may invoke other tools, easier to use the global flag.

---

## When to file an issue (vs fix yourself)

**File an issue:**
- Skill spec produces structurally different output from IMI reference (despite refs loaded)
- Sub-agent invocation fails systematically
- Cache layer corrupts data
- Gate decision doesn't match the % breakdown

**Fix yourself:**
- Topic-specific input refinements
- Adjust resource caps for your run
- Update `.claude/refs/` with newer reference templates
- Add new agents for related skills

---

## Getting help

For Wright-Partners team: ping Bagus on the WP Slack channel.

For external users (hypothetically): file GitHub issue with:
- Run log (sanitize any sensitive content)
- Output folder structure (`tree output/raw-claude-overnight/[run-id]/`)
- What you expected vs what happened
- Mac OS version + Claude Code version
