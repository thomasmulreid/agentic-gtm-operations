---
name: gtm-qualification
description: >-
  Qualify inbound leads and score account lists against a fit-and-timing rubric,
  end to end. Use this whenever someone wants to qualify a lead, score a
  prospect, rank a list of accounts, triage inbound, decide who to work first,
  build a prioritized shortlist, assess ICP fit, or turn a raw list of companies
  into a ranked call list — even if they don't say the word "qualify." Triggers
  include: "is this lead worth my time," "score these accounts," "who should I
  reach out to first," "rank this list," "qualify this inbound," "does this
  company fit our ICP," "triage my leads," "build me a shortlist," "should I take
  this call," pasting a single company/person to assess, or attaching a CSV of
  companies to prioritize. Works on whatever the user can paste or upload — no
  CRM connection required. Two modes: single-account qualification (one lead →
  full brief) and list scoring (many accounts → ranked table).
---

# GTM Qualification

Qualify leads and score account lists against a fit-and-timing rubric. This skill runs the whole job — read the criteria, research what's missing, score honestly, output a decision — so a revenue team stops arguing about which leads deserve time and starts working the ranked list.

Two modes, auto-detected from the input:

- **Single-account mode** — one lead, one company, one person to assess. Output is a full qualification brief with a verdict.
- **List mode** — many accounts to prioritize. Output is a ranked table plus a short read on the top and bottom of the list.

If the input is one account, run single mode. If it's a list of two or more, run list mode. If it's genuinely ambiguous (e.g. one row that might be a header), ask which — don't guess and produce the wrong shape.

## Before anything else: get the rubric

This skill scores against **the user's** definition of a good lead, not a generic one. Get that definition in this order:

1. **An ICP doc the user provides.** If they've pasted or attached an ICP — especially one produced by the companion `icp-definer` skill — use it as the rubric directly. That doc already carries fit dimensions, timing signals, weights, thresholds, and disqualifiers in exactly the shape this skill scores on. Read it and use it as written; it's theirs. This is the intended path: define the ICP once with `icp-definer`, then score everything here against it.
2. **A filled-in `references/config.md`.** If there's no fresh ICP doc but the installer has tuned the config, use that.
3. **Defaults.** If neither exists, `config.md` ships with a generic B2B rubric so the skill still runs.

**If you're falling back to defaults** (no ICP doc, config untuned), say so plainly before scoring:

> Heads up — I don't have your ICP, so I'll score against a generic B2B fit-and-timing model. This gets far sharper if you run the `icp-definer` skill first and hand me that doc, or edit `config.md`. Want me to proceed on defaults, or define the ICP first?

Then proceed if they say go. Never pretend a default rubric is a tuned one.

## The tool priority ladder

For any fact a score depends on — company size, industry, funding, tech stack, headcount, recent signals — get it in this order. Try each rung before dropping to the next. Only the last rung involves interrupting the user.

1. **What the user already gave you.** The paste, the CSV columns, the forwarded email, the form-fill. Read all of it first. Most single-lead qualification inputs already contain half the answer.
2. **What you can look up.** If web search or a research tool is available, research the account: website, size, industry, recent news, funding, hiring, leadership. Fill the gaps yourself. Research first, ask last.
3. **What another connected tool holds.** If there's an enrichment or CRM tool connected and it's the natural source (e.g. the account already exists in their system), use it.
4. **Ask the user — last resort, batched.** Only ask for what you genuinely cannot get: internal context ("have we sold to them before"), or a criterion that isn't public. Ask everything you need in one message, not a drip of questions.

Never ask for something you could have looked up. That's the fastest way to make this skill feel like a form instead of an operator.

## Be honest about what you couldn't find

This is the rule that separates a useful score from a confident fiction. When a data point that feeds a score is missing and you couldn't resolve it:

- Say **"not found"** or **"not disclosed."** Do not infer a plausible value to fill the cell.
- Score that dimension as **unknown**, and say how it affected the verdict — usually it caps confidence rather than moving the score.
- Never invent funding rounds, headcounts, tech stacks, or intent signals. A lead scored on three real dimensions and two honest unknowns is worth more than one scored on five guesses, because the user can act on the first and gets burned by the second.

Carry a confidence read on every verdict, driven by how much was known vs. inferred. Low data coverage means low confidence — say it.

## Single-account mode

Run the ladder, score each dimension in `config.md`, then output exactly this structure. Hold to it — repeatability is the point.

```
# Qualification: [Company] — [verdict]

**Verdict:** [Qualified / Worth a look / Disqualified] · **Confidence:** [High / Medium / Low]
**Score:** [weighted total] / 100

**One-line read:** [The single sentence a rep needs. Why this is or isn't worth their next hour.]

## Fit
[Per fit dimension from config: the dimension, what you found, the score. One line each. Mark unknowns as unknown.]

## Timing
[Per timing signal from config: what you found, whether it's a reason to move now. Recent trigger events go here — funding, hiring, leadership change, product launch, whatever config names.]

## What I couldn't confirm
[Every data point that was missing or unverifiable. If everything was found, say "Nothing material — full data coverage."]

## Recommended next step
[Concrete and specific to the verdict. "Book the call" / "Route to nurture, revisit if they raise" / "Decline — here's the one-line reason." Not a menu — a call.]
```

The verdict bands map to `config.md` thresholds. Don't hedge the verdict to be polite — a soft "maybe" on a bad-fit lead wastes the rep's week. If it's a no, say no and give the reason in one line.

## List mode

Score every row against the same rubric, then rank. The value here is consistency at scale — the same rubric applied identically to row 3 and row 300, which is exactly what a human triaging by gut can't hold.

Process:

1. Read the file. Identify which columns map to which config dimensions. If key columns are missing (e.g. no industry, no size), note it — those dimensions score as unknown across the list rather than being silently skipped.
2. For a **short list (roughly ≤ 15 rows)**, research each account to fill gaps, same as single mode.
3. For a **longer list**, don't silently do shallow work on all of it. Score on the data present, be explicit that rows weren't individually researched, and offer to deep-research the top slice: *"Scored 120 accounts on the columns provided. I didn't individually research each — want me to deep-dive the top 20?"*
4. Rank by weighted score. Break ties with timing signal.

Output structure:

```
# Scored: [N] accounts

**Rubric:** [one line — config default or tuned, and the dimensions used]
**Data coverage:** [what was present in the file vs. what scored as unknown across the list]

## Ranked list
[A table: Rank · Company · Score · Verdict · The one reason it landed there. Highest first.]

## Top of the list
[The 3–5 to work first, and the specific reason each earns it. This is the part the user acts on Monday.]

## Bottom / disqualified
[What's not worth time, grouped by the reason — wrong size, wrong vertical, no timing signal. So the user trusts the cut.]

## What would sharpen this
[The one or two config changes or data columns that would most improve the scoring. Honest, brief.]
```

Save the full ranked list as a CSV alongside the summary so the user can drop it back into their tools. Deliver the CSV, don't just print 200 rows into the chat.

## Edge cases

- **No config, user wants to go anyway** → score on the documented default rubric, label every output as default-based, don't pretend otherwise.
- **Single row that might be a header** → ask, don't guess. One wrong assumption here mis-shapes the whole output.
- **List with no usable columns** (just company names) → research is the only source; on a long list that's slow, so say so and offer to score a named top slice rather than quietly doing thin work on all of it.
- **Duplicate accounts in a list** → flag them, score once, note the dupes. Don't let the same company rank twice.
- **A lead that's clearly out of scope** (B2C when config says B2B, a student, a competitor, a job-seeker) → disqualify fast with the one-line reason. Don't run the full rubric theater on an obvious no.
- **Conflicting data** (the paste says 50 employees, the website says 500) → surface the conflict, use the more credible source, say which and why. Don't average them into a fiction.
- **The user pushes for a higher score than the data supports** → hold the line, briefly. The score is only worth something if it's honest; explain what would actually change it.
- **Sensitive inputs** (a real person's contact details) → score the fit, don't editorialize about the individual. This is account qualification, not a background check.

## Voice inside the output

Write the way a sharp operator hands a colleague a read, not the way a form returns a result. Lead with the verdict. No throat-clearing, no "based on my analysis." Don't apologize for unknowns — state them and move on. The user should be able to act on the first two lines without reading the rest.

Silent on the mechanical steps that worked; explicit on any step that failed or came up empty. If research was blocked, a column was unreadable, or a source conflicted, the user hears about it — a partial job passed off as complete is worse than a smaller honest one.
