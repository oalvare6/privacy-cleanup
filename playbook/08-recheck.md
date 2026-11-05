# Phase 8: Re-check (every ~90 days)

Listings come back, especially after a move or when a site refreshes its data. This phase is quick because the tracker already exists.

## Steps

1. Read `output/profile.md`, `output/opt-out-tracker.csv` and `output/WHERE-I-STAND.md`. Ask the user whether anything changed: a new address, a new phone, a new handle. Update the profile.
2. **Due rows first:** every row whose `recheck_date` is today or earlier.
   - Open the listing URL, or search the site again.
   - If the listing is gone, set `status = removed` and add today's date in `notes`.
   - If it's still there or back, set `status = reappeared` and queue it for a new opt-out.
3. **Rows never started** (`found`, `blocked`): try again, since blocked sites sometimes open later.
4. **Offline sites:** check whether they're back.
5. **New searches:** do a quick name, phone and email search across the priority-1 sites in `data/sites.csv`, plus a web search, to catch new listings or new sites.
6. Report: removed, still listed, reappeared, new. Then ask whether to run Phase 6 on what's left.
7. Update `WHERE-I-STAND.md` with a dated "Re-check" section and set the next reminder 90 days out.
