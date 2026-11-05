# Phase 5: Write the report

Write these files to `output/`, using the layouts in `templates/`:

| File | Template | Purpose |
|---|---|---|
| `REPORT.md` | [templates/REPORT.md](../templates/REPORT.md) | The full audit, worst first |
| `opt-out-tracker.csv` | [templates/opt-out-tracker.csv](../templates/opt-out-tracker.csv) | Already started in Phase 1; sort it by priority |
| `accounts.csv` | [templates/accounts.csv](../templates/accounts.csv) | From Phase 3 |
| `WHERE-I-STAND.md` | [templates/WHERE-I-STAND.md](../templates/WHERE-I-STAND.md) | A one-page baseline to come back to |

## Rules

- **Lead with "the short version"**: 4–6 numbered points, worst first.
- Be specific: "Your street address and birth month are on 9 free sites" beats "Your data is exposed."
- For every finding, say **what to do** and **who does it** (you, me, or together).
- Mark anything unverified as "possible".
- Keep each section short. Put long lists in the CSVs and link to them.
- At the top, note that the file is private and must not be uploaded or shared.

## Then

Show the user the short version, tell them where the files are, and ask:

> Want me to start the cleanup? I'll go site by site in your browser, and you'll solve the CAPTCHAs. Nothing gets sent without your OK.

If they agree, go to [06-cleanup.md](06-cleanup.md).
