# Phase 6: Cleanup

Only start this phase once the user has said yes. You **act** here, so every safety rule in AGENTS.md applies. Work in small batches and report after each one.

## A. Google "Results about you" (2 minutes, do first)

Send the user to myactivity.google.com/results-about-you so they can add their phone, emails and addresses. Google then watches its results and offers removals. The user has to do this while signed in.

## B. People-search opt-outs (work down `opt-out-tracker.csv`)

For each row with `status = found`, highest priority first:

1. Open the `opt_out_url` from `data/sites.csv` in the browser. If it's dead, find the current one (it's usually in the site's footer, under "Do Not Sell", "Opt Out" or "Privacy") and tell the user.
2. Fill in only the fields the form needs. Paste the listing URL when the form asks for it.
3. **Hand off the CAPTCHA**, e.g. "Tab 3: solve the CAPTCHA and press Submit." Keep a few tabs going so the user can do them in a row.
4. Many sites email a confirmation link that expires in about 24 hours. If you have email access, find it and open it in the browser; otherwise tell the user to look for it.
5. Update the tracker: `status = submitted`, `date_submitted`, `recheck_date` (+3 to 7 days for most sites; use `removal_time` from `sites.csv` if listed).

**Sites that need more:**
- **Phone verification** (e.g. Whitepages): the user takes the automated call and enters the code. A Google Voice number usually works.
- **ID upload:** don't. Mark it `needs-id: user's call`.
- **Email-only sites:** draft a request (section C).
- **Relatives' listings:** list who needs to opt out, and offer to prepare their forms if they agree to you acting as their authorized agent.

## C. Deletion requests by email

For marketing data brokers and email-only sites, use [templates/deletion-request-email.md](../templates/deletion-request-email.md). Pick the law by the user's state of residence:

- **California:** CCPA/CPRA. California residents can also use the state's Delete Request and Opt-out Platform (DROP) from the California Privacy Protection Agency, which sends one request to every registered data broker. Point them to it if it's available.
- **A state with a consumer privacy law** (e.g. Texas TDPSA, Virginia VCDPA, Colorado CPA, Connecticut CTDPA, Oregon OCPA and others): cite that law by name. Check that the law is in effect before citing it.
- **No state law:** send it as a plain request; most brokers honor these anyway.

Create the requests as **email drafts**, or as files in `output/drafts/` if there's no email connector. List them for the user, who sends them, or OKs you sending them by name. Include only the identifiers that broker needs.

**Wayback Machine:** use [templates/wayback-removal-email.md](../templates/wayback-removal-email.md). It must come from the account owner's email and list the exact URLs or patterns to exclude.

## D. Accounts

For each `delete` row in `accounts.csv`:
- Make sure no balance, subscription or loan is open (especially with lenders).
- Find the deletion page (justdeleteme.xyz helps), or draft a deletion request.
- The user logs in and confirms. Don't use their passwords.

## E. The user's own sites and repos

Offer to fix what Phase 4 found: strip EXIF from images, remove a personal email or phone from code, switch git to a no-reply email. **Rewriting git history can't be undone and affects collaborators.** Explain that and get an explicit yes first.

## F. Paid removal services (only if the user is open to it)

These services re-submit opt-outs automatically, since listings tend to come back. Mention that options exist (e.g. EasyOptOuts, Optery, DeleteMe, Incogni), that prices and coverage change, and that Optery has a free scan. Never sign the user up.

## Finish

Update `opt-out-tracker.csv`, `REPORT.md` and `WHERE-I-STAND.md`. Then offer the re-check reminder (calendar event, or `output/recheck-reminder.ics`) for about 90 days out, and move to [07-lockdown.md](07-lockdown.md).
