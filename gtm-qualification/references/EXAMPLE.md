# Worked Examples

Two runs on the shipped default rubric, so you can see the shape before you install.
Company details below are illustrative, not real accounts.

---

## Example 1 — single account

**User pastes:**

> Got an inbound from the VP Sales at Northwind Logistics. Worth a call?
> northwindlogistics.com

**Skill runs the ladder:** reads the paste (title + domain), then researches the
domain — finds a ~300-person freight-tech company, Series B eight months ago, hiring
three AEs this quarter. Can't find their current tooling. Scores against the default
rubric.

**Output:**

> # Qualification: Northwind Logistics — Qualified
>
> **Verdict:** Qualified · **Confidence:** Medium
> **Score:** 74 / 100
>
> **One-line read:** Right-sized B2B tech company with fresh funding and an expanding
> sales team — a VP Sales reaching out is a real buying signal. Take the call.
>
> ## Fit
> - Industry: freight tech / B2B software — in target. Score: strong.
> - Size: ~300 employees — inside the band. Score: strong.
> - Business model: B2B, considered sale, real GTM motion. Score: strong.
> - Maturity: Series B, established sales org. Score: strong.
>
> ## Timing
> - Funding: Series B ~8 months ago — budget available, pressure to deploy. Now.
> - Hiring: three AE roles open this quarter — scaling the exact motion. Now.
> - The VP Sales initiating contact is itself the strongest timing signal here.
>
> ## What I couldn't confirm
> - Current sales tooling / tech stack — not disclosed publicly. Caps confidence to
>   Medium; doesn't change the verdict.
>
> ## Recommended next step
> Book the call. Going in, ask what triggered the search now and what they've already
> tried — the funding-plus-hiring pattern usually means a specific quarter problem.

---

## Example 2 — list

**User uploads** `inbound-q3.csv` — 60 rows, columns: Company, Website, Employees,
Industry, Source.

**Skill runs:** maps columns to rubric dimensions, notes there's no timing/funding
column so timing scores as unknown across the list unless research fills it, scores
all 60 on the fit data present, flags that it didn't individually research each,
offers to deep-dive the top slice. Ranks. Writes a scored CSV.

**Output:**

> # Scored: 60 accounts
>
> **Rubric:** Default B2B fit-and-timing (untuned). Fit dimensions from the columns:
> industry, size, model. Timing scored as unknown — no signal column in the file.
> **Data coverage:** Industry and size present for all rows. No timing/funding/hiring
> data — so this ranking is fit-only. Editing config or adding a signal column would
> add the timing half.
>
> ## Ranked list
> | Rank | Company | Score | Verdict | Why |
> |---|---|---|---|---|
> | 1 | Cedar Freight | 66 | Worth a look | In-vertical, right size; no timing data |
> | 2 | Balboa SaaS | 64 | Worth a look | Clean B2B fit; timing unknown |
> | … | … | … | … | … |
> | 58 | ShopMint | 22 | Disqualified | B2C — hard disqualifier |
> | 59 | (student inbound) | 0 | Disqualified | Not a company |
>
> ## Top of the list
> Cedar Freight, Balboa SaaS, and three others clear the fit bar cleanly. Work these
> first — but note none have timing signal in this data, so the order inside the top
> group is soft. Fifteen minutes of research on these five would firm it up.
>
> ## Bottom / disqualified
> - **B2C (7 rows)** — hard disqualifier, cut.
> - **Too small / pre-revenue (9 rows)** — below the size band.
> - **Non-companies (2 rows)** — a student and what looks like a job applicant.
>
> ## What would sharpen this
> 1. Add a funding or hiring-signal column — that turns a fit-only ranking into a
>    fit-and-timing one, which is where the real prioritization lives.
> 2. Tune `config.md` to your actual verticals — the default let a couple of adjacent
>    industries score higher than they probably should for you.
>
> *Full ranked list saved to `inbound-q3-scored.csv`.*

---

Both runs show the signature: verdict first, honest unknowns named not hidden, a
concrete next step, and — in list mode — a straight read on what would make the score
better rather than a claim that it's already perfect.
