# Phase 2: Data breaches

Goal: list the known breaches the user's email or phone appears in, and what each leaked. **Look only.** A breach can't be undone. The fix is to make the leaked data useless (Phase 7).

## Steps

1. **Have I Been Pwned** (haveibeenpwned.com). Searching by email on the website is free but often protected by a bot check, and the API needs a paid key. If you can't search directly, give the user the link and ask them to paste the results (breach names are enough).
2. **Inbox search** (if you have an email connector). Look for breach notification letters, e.g. `"data breach" OR "security incident" OR "unauthorized access" OR "notice of data" OR "compromised"`. Companies often email affected customers directly, and schools and healthcare providers are common sources.
3. **News check.** For each service the user clearly uses (their bank, carrier, school, employer), search "[service] data breach [year]". Only list a breach as "possible" unless there's evidence the user was included.
4. Note **monitoring alerts** already in the inbox (credit monitoring "new account", "SSN trace" and "dark web" alerts) and treat them as questions for the user, not findings.

## Record

Put a table in the report: breach, year, what leaked (email, password, phone, address, DOB, SSN and so on), and "confirmed" or "possible". Sort by how sensitive the leak was: SSN, DOB and address first.

## Finish

Tell the user: the number of breaches, the worst one, and whether any leaked passwords (which means they need to change passwords; see Phase 7).
