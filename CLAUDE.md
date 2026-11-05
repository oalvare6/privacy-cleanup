@AGENTS.md

## Claude Code notes

- The user can type `/audit` to start, or `/recheck` for the 90-day follow-up. Plain requests like "run my privacy audit" work too.
- Browser: prefer the Claude in Chrome extension, which uses the user's own Chrome, so their logins and CAPTCHAs work normally. Playwright MCP is the fallback.
- Email and calendar: the Gmail and Google Calendar connectors (claude.ai → Settings → Connectors) cover Phase 3 and the reminder.
- Phases 1–4: run them as parallel subagents, giving each one only the identifiers it needs. Split the site list into batches of ~10 so no agent runs too long.
- If the permission system blocks sending an email, don't look for another way. Leave a draft and tell the user.
