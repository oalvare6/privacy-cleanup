# Phase 4: Wider web footprint

Goal: find what else a stranger could learn about the user from the open web. **Look only.**

## Checks

1. **Search engines.** Search the name with city, school and employer, each handle and username, the email and the phone. Note anything that shows a face, a home, a birthday, a school or a workplace.
2. **Social profiles.** For each handle: is it public, and what does the profile show (real name, photo, location, birthday, school)? Note any abandoned accounts that are still public.
3. **Wayback Machine.** For each social profile and personal site, query the CDX API (no key needed):
   `https://web.archive.org/cdx/search/cdx?url=twitter.com/HANDLE*&output=json&fl=timestamp,original&collapse=urlkey&limit=500`
   Swap in other sites (x.com, instagram.com, tiktok.com/@HANDLE, the user's domain). Count the archived pages and skim a few for sensitive posts (birthdays, photos inside a home, an address). Wayback snapshots stay up even after the live account goes private.
4. **Code and sites the user owns** (if they shared any):
   - Personal email or phone in public repos, in commit author emails, or on the live site
   - Photos with GPS location in their EXIF data (check with `exiftool` or `mdls`, if installed)
   - PDFs or documents whose metadata names the author
   - Public group-chat invite links (these expose admins' phone numbers)
5. **Business records.** If the user owns or runs a business, state filings and registrations (e.g. FMCSA, Secretary of State) may list a home address. These can only be changed at the source.
6. **Public records** like property and voter rolls generally can't be removed. Note them so the user knows. Some states offer address confidentiality for specific groups, such as victims of violence and certain public servants.

## Record

Put a table in the report: where, what it shows, and the fix. For anything in the user's own repos or sites, note that you can fix it in Phase 6 (stripping EXIF, scrubbing history) and that a history rewrite can't be undone.

## Finish

Tell the user the top 3 findings from this phase.
