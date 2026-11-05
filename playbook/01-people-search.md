# Phase 1: People-search sites

Goal: find every free people-search, background-check and caller-ID page that shows the user, and confirm each one. **Look only.**

## Sources

- `data/sites.csv`: start with priority 1, then 2, then 3.
- A web search for the user's name plus city, phone number (try `555-555-5555`, `(555) 555-5555` and `5555555555`) and email can turn up sites not on the list. Add any you find to the tracker.

## For each site

1. Search by **name and city/state**, and also by **reverse phone** and **reverse email** if the site offers them. These often lead to separate pages.
2. Open each likely result and read what it shows: address, age or birth month, phones, emails, relatives, property details, map.
3. **Confirm the match** with at least 2 identifiers (see the AGENTS.md safety rules). A different person with the same name is common.
4. Note the **exact listing URL**. Many opt-out forms ask for it.
5. Note **relatives' and housemates' listings** that show the user's phone or address. Don't act on them; the user's opt-out usually won't remove them (see Phase 6).
6. If the site blocks you (Cloudflare, login wall, paywall, or the page renders empty), mark it `blocked: check by hand` and move on. Don't fight bot checks.

## Record

Add one row per listing to `output/opt-out-tracker.csv`, using the columns in [templates/opt-out-tracker.csv](../templates/opt-out-tracker.csv):
- `status`: `found`, `possible-match`, `not-listed`, `blocked` or `site-offline`
- `exposes`: short and concrete, e.g. "full address, birth month, 3 phones, 12 relatives"
- `priority`: 1 if it shows a street address or birth date; 2 if it shows a phone or email with a name; 3 if it shows a number or city only

## Tips

- Sites in one network often share a record ID (Confi-Chek, PeopleConnect, BeenVerified and Spokeo families). The `also_covers` column in `sites.csv` lists the known ones. Still check each site; the claims aren't always true.
- Reverse-phone pages often list household members. Note them.
- Check both the current and the past addresses. Old addresses linger for years.

## Finish

Tell the user: how many sites show them, the worst 3–5 (what each shows), and how many you couldn't check.
