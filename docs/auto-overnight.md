# Auto Overnight Research

Sequential nightly pipeline. Drop a topic into `input/`, merge to `main`,
and at **23:00 SGT** it auto-runs end-to-end on alphabot: research → commit
+ push to origin → email completion to the team.

---

## How to add a topic

1. Copy `input/_input-template-blank.txt` to `input/<YYYY-MM-DD>-<slug>.md`.
2. Fill in **Topic**, **Hypothesis**, **Scope**, **Geography**, **Working
   hypotheses**. (Required by `healthcheck.sh` — files missing these
   sections are skipped with a warning.)
3. Optional: add YAML frontmatter at the very top of the file:

   ```yaml
   ---
   owner: alice@sprout.co.id
   extra_recipients:
     - bob@sprout.co.id
   ---
   ```

4. Open a PR; merge to `main`. The next 23:00 SGT, the topic gets picked up.

Existing files **without** frontmatter continue to work — frontmatter is
purely optional metadata.

---

## Frontmatter fields

| Field              | Type    | Effect                                                                 |
|--------------------|---------|------------------------------------------------------------------------|
| `skip: true`       | bool    | Never auto-pick this topic (e.g. for archived hypotheses).             |
| `rerun: true`      | bool    | Re-run on the next night even though a completed run already exists.   |
| `owner: <email>`   | string  | Added to the completion email's recipient list for this topic.         |
| `extra_recipients` | list    | Additional emails for this topic (YAML list under the key).            |

---

## Opt-out / force re-run

- **Opt out:** add `skip: true` to the input file's frontmatter (or delete
  the file from `input/`).
- **Force re-run:** add `rerun: true`. After the new run lands, remove the
  flag if you don't want it to fire again.

---

## Manual run (for testing)

```bash
cd /Users/alphabot/Work/overnight-research-repo
./scripts/auto-overnight.sh
```

This runs the same flow launchd uses. It will only act on **unresearched**
topics (or those flagged `rerun: true`).

To peek at the queue without running anything:

```bash
./scripts/discover-topics.sh
```

---

## Logs

| Path                                           | What it contains                              |
|------------------------------------------------|-----------------------------------------------|
| `logs/auto-overnight-YYYYMMDD-HHMM.log`        | Orchestrator log for that night's run.        |
| `logs/auto-overnight-digest-YYYYMMDD.txt`      | Body of the digest email that was sent out.   |
| `logs/launchd/stdout.log`, `stderr.log`        | launchd-captured stdio from the 23:00 fire.   |
| `unattended-YYYYMMDD-HHMM.log`                 | Per-topic run log (written by run-unattended).|

---

## launchd

The 23:00 SGT trigger lives at
`~/Library/LaunchAgents/co.sprout.overnight-research.plist`.

```bash
# enable
launchctl load   ~/Library/LaunchAgents/co.sprout.overnight-research.plist
# disable
launchctl unload ~/Library/LaunchAgents/co.sprout.overnight-research.plist
# fire NOW (useful after env edits)
launchctl start co.sprout.overnight-research
# inspect
launchctl list | grep sprout
```
