# Phase 3: Inbox (accounts and security alerts)

Needs an email connector and the user's permission from intake. Without one, skip to the "No email access" section. **Look only.** Don't label, archive, unsubscribe or delete anything.

## A. Account inventory

Find every service with an account tied to the user's email.

1. Search with queries like:
   - `subject:(welcome OR "verify your email" OR "confirm your email" OR "activate your account")`
   - `subject:("password reset" OR "reset your password" OR "new sign-in" OR "new login")`
   - `subject:(receipt OR "order confirmation" OR "your order")`
   - `"terms of service" OR "privacy policy" update`
   Page through the results. Large inboxes have hundreds of senders.
2. Group by sender domain. For each service, record: name, domain, category, what sensitive data it likely holds (card, SSN, ID, health, location), first and last email dates.
3. Recommend one action per service:
   - **keep-but-secure**: banks, government, carrier, email, cloud, anything with money or an ID
   - **delete**: unused apps, especially loan, cash-advance and pay-later apps, old crypto exchanges, people-search customer accounts, and apps that sell data
   - **review**: everything else the user should decide on
4. Write `output/accounts.csv` using [templates/accounts.csv](../templates/accounts.csv).

## B. Security alerts

Search for alerts from the last 12 months:
- Email provider: recovery email or phone changed, new device sign-ins, another account adding this email as *its* recovery address
- Phone carrier: SIM change, port-out, new device or login
- Banks and credit monitoring: new account opened, SSN trace, dark-web alert, unusual activity
- Apple, Google and Microsoft: billing changes, new devices
- Any service: password changed, 2FA turned off

List each one with its date and a plain "Was this you?" question. **Don't conclude anything is a hack.** Ask the user to go through the list, then record their answers in the report.

Also note scam patterns, like debt-relief, settlement, fake invoice or "your account will be closed" emails, so the user knows to ignore them.

## No email access

Give the user 3–4 of the search queries above to run in their inbox, and ask them to paste the list of senders. Build `accounts.csv` from that.

## Finish

Tell the user: the number of accounts and how many you'd delete, and list the "Was this you?" alerts. Wait for their answers on the alerts before writing them into the report as resolved.
