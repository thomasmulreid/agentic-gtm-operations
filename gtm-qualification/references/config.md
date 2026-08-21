# Qualification Config

This is the only file you need to edit to make the skill yours. It defines what a
good lead looks like *for you*. The skill reads it on every run and scores against it.

Ships with a generic B2B default so it works immediately. It gets much sharper once
you replace the defaults with your real criteria. Everything below the line is meant
to be edited.

**Status marker:** `DEFAULT`
> Change this to `TUNED` once you've edited the criteria below. The skill checks this
> line — while it says `DEFAULT`, it will tell the user the rubric is untuned before
> scoring. That warning is a feature; don't remove the marker, just flip it when you've
> done the work.

---

## 1. ICP — who you actually want

One paragraph, plain language. The company you're thrilled to land. Be specific:
segment, size band, business model, and the hard disqualifiers. The skill uses this
as the top-level filter before dimension scoring.

> **DEFAULT:** B2B companies, roughly 50–1,000 employees, selling software or a
> tech-enabled service, past the earliest stage (has revenue and a go-to-market team).
> Not B2C. Not pre-revenue. Not solo operators or agencies reselling our category.

## 2. Fit dimensions

The attributes that make an account a structural fit, independent of timing. Each has
a weight (they should sum to the Fit share in section 4) and a short "what good looks
like." Add, cut, or reweight freely — these are placeholders.

| Dimension | Weight | What good looks like |
|---|---|---|
| Industry / vertical | 10 | In-target vertical; not an excluded one |
| Company size | 10 | Inside the employee/revenue band in the ICP |
| Business model | 5 | B2B, sells a considered product with a real sales motion |
| Maturity / stage | 5 | Has a GTM team and budget authority; past founder-only selling |

## 3. Timing signals

The events that make *now* the right moment, even for a good-fit account. These are
what move a "worth a look" up to "qualified." Name the triggers that matter in your
market.

| Signal | Weight | Why it means "now" |
|---|---|---|
| Recent funding | 8 | New budget, pressure to deploy it |
| Leadership hire in the buying function | 8 | New owner re-evaluating tools/vendors |
| Headcount growth in the relevant team | 5 | Scaling the exact motion you serve |
| Public pain / trigger event | 6 | Named a problem you solve (launch, miss, mandate) |

## 4. Score weighting

How the two halves combine into the 0–100 score. Tune to how much you care about fit
vs. urgency. A practice that can wait for the right account weights fit; one that needs
to fill a quarter weights timing.

> **DEFAULT:** Fit = 60, Timing = 40. (Section 2 weights sum to 30 → scaled to 60;
> section 3 weights sum to 27 → scaled to 40. The skill handles the scaling; you just
> set the split here.)

## 5. Verdict thresholds

Where the score bands fall. These drive the verdict word in the output.

> **DEFAULT:**
> - **Qualified** — 70+ (work it now)
> - **Worth a look** — 45–69 (real, but needs a reason to prioritize)
> - **Disqualified** — under 45 (not worth the hour)

## 6. Hard disqualifiers (optional)

Anything here is an automatic no regardless of score — the fast-fail list. Saves the
skill from running full rubric theater on an obvious miss.

> **DEFAULT:**
> - B2C / consumer
> - Pre-revenue / no GTM team
> - Direct competitor
> - Job-seeker or student inbound
> - Outside served geographies (leave blank if you serve everywhere)

## 7. Notes for the scorer (optional)

Anything that doesn't fit above — quirks of your market, a signal that looks good but
isn't, a vertical that over-indexes in inbound but under-converts. Free text. The skill
reads it as context.

> **DEFAULT:** (none — add your own hard-won read here)
