# Phase 0: Intake

Goal: collect the identifiers to search for and agree on what you may do. Keep it to one short round of questions, and don't ask for anything the audit doesn't need.

## 1. Explain in 3 lines

Tell the user something like:

> I'll check where your personal info shows up online (people-search sites, data breaches, old accounts, archived posts) and write you a report. Until you say go, I only look and change nothing. Everything I find stays in the `output/` folder on this computer.

## 2. Ask for identifiers

Ask in one message. Only the first three are needed; the rest improve results.

**Needed**
- Full name, plus any other names used (maiden name, nicknames, middle name)
- Main email address
- Mobile phone number

**Helpful**
- Other emails and phone numbers, including old ones
- Current city and state, and past cities
- Current street address and past addresses. Explain why: people-search sites list addresses, and you need them to confirm a listing is really the user. Let them skip this.
- Birth month and year (sites show age; this confirms matches)
- Usernames and handles (X, Instagram, TikTok, Reddit, GitHub, gaming)
- Personal websites or repos they run
- State of residence. This decides which privacy law the deletion requests cite (see [06-cleanup.md](06-cleanup.md))

**Never ask for** an SSN, a government ID number, passwords or bank details.

## 3. Ask permissions

Ask these as one multiple-choice question if you can:
1. May I open sites in your browser and fill in opt-out forms? You'll solve the CAPTCHAs, and I won't press the final submit unless you've OK'd that batch.
2. May I read your email to list your accounts and spot security alerts? (Read-only. Drafts are only made later, if you approve.)
3. May I create a re-check reminder on your calendar in about 90 days?
4. Are you OK with paid removal services being suggested? (Default: free opt-outs only.)

## 4. Save the profile

Write `output/profile.md` using [templates/profile.md](../templates/profile.md). Record the answers to the permission questions too. Then say which phases you'll run and roughly how long they'll take, and start Phase 1.
