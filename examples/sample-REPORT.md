# Privacy Audit: Alex Sample (example)

> **This is a made-up example** that shows what the agent produces. Every name, number and address is fictional (555-01xx numbers and example.com are reserved for examples). A real report is saved to `output/REPORT.md` and never leaves your computer.

---

## 1. The short version

1. **Your street address and birth month are on 9 free people-search sites.** Anyone with your phone number can find your home in under a minute. Opt-outs for all 9 are ready in `opt-out-tracker.csv`.
2. **Your email is in 6 known data breaches.** The worst (a 2025 school breach) leaked your date of birth and address. Two of them leaked passwords, so change any password you reused.
3. **The Wayback Machine has 112 archived pages of your old public Instagram** (2018–2021), including birthday posts and photos inside your home. You can ask the Internet Archive to remove them.
4. **182 accounts are tied to your email.** About 70 are worth deleting, mostly pay-later and cash-advance apps that share data with lenders.
5. **Your phone number is a SIM-swap risk** because it's public. Turn on your carrier's SIM and port-out locks today (Section 3).

## 2. "Was this you?"

| # | When | What happened | If it wasn't you |
|---|---|---|---|
| 1 | Mar 3 | Recovery phone on your email account changed | Change your password, fix recovery details, sign out of unknown devices |
| 2 | Feb 18 | Carrier: "SIM changed on your line" | Call your carrier, ask who made the change, add a port-out PIN |

**Ignore:** "debt relief" and "settlement" emails, which are scams fed by resold loan-application data.

## 4. People-search sites showing your info

| Priority | Site | What it shows | Opt-out |
|---|---|---|---|
| 1 | ExamplePeopleFinder | 100 Example St, Anytown TX; born Jun 2001; (555) 010-0123; 14 relatives | Web form + CAPTCHA + email link |
| 1 | SampleBackgroundCheck | Full address with map, 3 phones, email | Web form + email link |
| 2 | DemoCallerID | Phone, name, city | Web form |

**Relatives' listings that expose you:** a housemate's listing shows your phone and address. They'll need to opt out themselves, or authorize you to do it.
**Not checked (blocked):** 4 sites. Links are in the tracker for you to check by hand.

## 9. Removal plan

| When | What | Who |
|---|---|---|
| Today | Carrier locks, email passkey, credit freezes | You (I'll walk you through) |
| This week | 9 priority-1 opt-outs | Together: I fill in forms, you solve CAPTCHAs |
| This week | Wayback removal email; 12 deletion requests | I draft, you send |
| Every 90 days | Re-check | `/recheck` |
