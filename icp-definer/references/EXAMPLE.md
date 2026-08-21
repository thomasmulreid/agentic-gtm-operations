# Worked Example

An abbreviated run so you can see the shape. Details are illustrative.

---

**Person:** Help me define our ICP. We sell an expense-management tool.

**Skill grounds it:** Are you defining this for the whole company, your team, or your
own accounts? And who buys it — what's the one-sentence version of what you sell?

**Person:** Company-wide. We sell software that automates expense reports and corporate
card reconciliation for finance teams.

**Skill goes to the core move:** Who are your best five customers right now — the ones
you'd clone? Not your biggest logos, the ones where the deal closed clean and they
still love you a year in.

**Person:** Probably [Acme], [Belfry], [Cortado] — all somewhere between 200 and 800
people, all had a finance team of 5–15 drowning in manual reconciliation, all had just
raised a round so they were scaling headcount fast.

**Skill mines the pattern:** So the thread isn't industry — it's a finance team big
enough to feel the pain but too small to have built their own tooling, hitting it right
when a raise makes spend explode. Is that fair? And where do deals *stall* — who looks
right but drags?

**Person:** Yeah, that's it. Deals stall with companies under ~100 people — not enough
volume to care yet. And enterprise finance orgs want SSO and procurement reviews we're
not set up for.

**Skill reflects back, then writes the doc.** Output:

```markdown
# ICP — [Company], company-wide

*Defined 2026-07-03 · company-wide · proven from customers*

## Who we sell to
Growth-stage companies, roughly 200–800 employees, with a finance team of 5–15 that
handles expense and card reconciliation manually and is feeling the strain — typically
right after a funding round accelerates headcount and spend. Big enough to have real
volume, not big enough to have built or bought heavy tooling yet.

## Fit dimensions
| Dimension | Weight | What good looks like |
|---|---|---|
| Company size | 15 | 200–800 employees |
| Finance team size | 10 | 5–15 people doing manual reconciliation |
| Business model | 5 | Company with meaningful corporate card / expense volume |
| Maturity | 5 | Post-raise, scaling headcount |

## Timing signals
| Signal | Weight | Why it means now |
|---|---|---|
| Recent funding round | 12 | Spend and headcount about to spike; budget available |
| Finance leadership hire | 8 | New owner re-evaluating the stack |
| Rapid headcount growth | 6 | Manual process about to break |

## Score weighting
Fit 60 / Timing 40. Fit is the bigger filter — wrong size wastes everyone's time — but
the funding trigger is what separates "someday" from "this quarter."

## Verdict thresholds
- Qualified: 70+
- Worth a look: 45–69
- Disqualified: under 45

## Hard disqualifiers
- Under ~100 employees (not enough volume to care)
- Enterprise finance orgs requiring SSO + procurement review (not set up to serve)
- B2C / no corporate card program

## Notes
Industry is deliberately not a fit dimension — the pattern cuts across verticals. The
real signal is finance-team-size-relative-to-company-stage, not what they sell.

## Confidence
Proven from a real, consistent customer base (5 named accounts share the pattern).
High confidence. Would sharpen further with win/loss data on the "under 100 employees"
stalls to confirm that's a hard floor vs. a timing problem.
```

**Skill closes:** This is ready. Run the gtm-qualification skill and hand it this doc —
it scores accounts and lists against exactly these criteria. Revisit the under-100-
employee floor once you've got win/loss data on it.

---

The signature: the ICP came from the customer pattern, not a template; the skill pushed
on the vague "mid-market" answer until it was a real band; and it was honest about the
one thing that would sharpen the profile further rather than claiming it was finished.
