---
name: icp-definer
description: >-
  Partner with a person to define their Ideal Customer Profile through a guided
  Q&A, then produce one clean ICP document. Use this whenever someone wants to
  define, build, sharpen, or write down an ICP or ideal customer profile, figure
  out who they should be targeting, describe their best-fit customer, build a
  target account definition, or turn a vague sense of "who we sell to" into
  something written and usable — even if they don't say "ICP." Triggers include:
  "help me define my ICP," "who should we target," "who's our ideal customer,"
  "I need to write down our target market," "build me a customer profile,"
  "sharpen our targeting," "who are our best-fit accounts," or a person
  describing their product and asking who to sell it to. Works for anyone: a CMO
  defining a company-wide ICP, an AE building their own patch definition, a
  founder writing their first one. Output is a Markdown ICP doc that the
  gtm-qualification skill can score accounts against directly.
---

# ICP Definer

Partner with the person to define their Ideal Customer Profile, then hand them one clean document they can use. This is an interview, not a form — the value is in asking the right questions and pushing back on soft answers, the way a sharp GTM operator would if they sat down with them for twenty minutes.

Works for whoever's in the chair. A marketing leader defining an ICP for the whole company, an AE defining one for their own territory, a founder writing their first. Same method, adjusted depth. Don't assume seniority or company size — ask.

## The one principle that makes this useful

A good ICP comes from what a company's **best customers actually have in common**, not from who they wish they sold to. Stated ICPs are usually aspirational and half-fiction. Revealed ICPs — pulled from real won deals and happy customers — are true. So the interview leans, wherever possible, on "tell me about the customers you're already winning and keeping," and works backward from there.

If the person has no customers yet (early-stage, pre-revenue), that's fine — the interview shifts to hypothesis mode and says plainly that the output is a starting hypothesis to validate, not a proven profile. Don't dress a guess as a finding.

## How to run the interview

Ask a few questions at a time, not all at once, and not one at a time either — a natural back-and-forth. Listen to the answers and follow the thread; skip questions already answered. Push gently when an answer is vague ("mid-market" — what does that mean in employees or revenue for you?). The goal is a real profile, not a filled-in template.

Work through these areas. Adapt order and depth to who you're talking to.

**1. Ground the conversation.**
Who are you and what are you defining this for — the whole company, your team, your own patch? What do you sell, in one plain sentence? This sets the scope and the altitude of everything after.

**2. Start from what's working (the core move).**
Who are your best customers right now — the ones you'd clone if you could? What do they have in common that a stranger wouldn't guess? Where do deals close fastest and renew cleanest? If they can name 3–5 real accounts, mine those for the pattern. This is where the real ICP hides.

**3. Firmographics — the fit skeleton.**
Company size (employees, revenue — get a real band, not "mid-market"). Industry or vertical. Business model (B2B/B2C, how they make money). Geography, if it matters. Maturity or stage, if it matters. These become the fit dimensions.

**4. The triggers — why now.**
What has to be true for a company to need you *now* rather than someday? Recent funding, a new hire, a growth stage, a specific pain surfacing, a tool they've outgrown. These become the timing signals — the difference between a good-fit account and a good-fit account worth calling this week.

**5. The anti-ICP — who to say no to.**
Who looks like a fit on paper but always disappoints — long sales cycles, heavy support, churn, price-grinding? Who's an automatic no? This is as valuable as the positive profile; a good disqualifier list saves more time than a good target list.

**6. The people, if relevant.**
Who's the buyer, who's the champion, who blocks. Only go here if it's useful for what they're defining — an AE's territory ICP may need it; a broad company ICP may keep it lighter.

**7. Sharpen and reflect back.**
Before writing anything, play back what you've heard as a draft profile in a sentence or two and let them correct it. This catches the "no, that's not quite it" that only surfaces when someone sees their own answer.

## Research to help, never to invent

If the person names their own company or specific customer accounts and you have web search, use it to come to the conversation prepared — understand their space, their likely customers, their competitors — so your questions are sharp rather than generic. Bring context; don't make them explain their own industry to you.

But the ICP is *theirs*. Research informs your questions; it does not manufacture their answers. Never infer a customer pattern from the web and present it as their revealed ICP. What their best customers have in common is something they know and you don't — draw it out, don't fabricate it.

## The output

When the interview has produced enough — usually firmographics, at least a couple of timing triggers, and a disqualifier or two — write the ICP document. Output it as Markdown, in exactly this structure, so it's both human-readable and directly usable by a qualification/scoring step downstream.

Tell the person you're producing it, then write it to a file.

```markdown
# ICP — [Company or scope]

*Defined [date] · [company-wide / team / individual patch] · [proven from customers / early hypothesis]*

## Who we sell to
[One clear paragraph. The best-fit account described so a stranger could recognize one. Plain language, specific.]

## Fit dimensions
[The structural attributes that make an account a fit, each with a weight and what "good" looks like. These are what an account gets scored on.]

| Dimension | Weight | What good looks like |
|---|---|---|
| Industry / vertical | [n] | [specific] |
| Company size | [n] | [real band] |
| Business model | [n] | [specific] |
| [others as surfaced] | [n] | [specific] |

## Timing signals
[The events that mean "now." What moves a good-fit account up the list.]

| Signal | Weight | Why it means now |
|---|---|---|
| [e.g. recent funding] | [n] | [specific] |
| [others as surfaced] | [n] | [specific] |

## Score weighting
Fit vs. timing split: [Fit n / Timing n]. [One line on why, from what they told you.]

## Verdict thresholds
- Qualified: [n]+
- Worth a look: [n]–[n]
- Disqualified: under [n]

## Hard disqualifiers
[The automatic-no list. Who looks like a fit but isn't.]

## Notes
[Anything hard-won that doesn't fit the boxes — a signal that looks good but isn't, a vertical that over-indexes but under-converts. Free text.]

## Confidence
[Honest read: is this proven from a real customer base, or an early hypothesis? What would sharpen it? If it's a guess, say so.]
```

After writing it, tell the person two things: it's ready to use, and if they run the `gtm-qualification` skill, this doc is exactly what it scores accounts against — hand it over and go. If it's an early hypothesis rather than a proven profile, remind them to revisit it once they have real won-deal data.

## Edge cases

- **No customers yet** → hypothesis mode. Build from their theory of the market, label the output clearly as unvalidated, name the validation step (first 5–10 deals will confirm or break it).
- **"Everyone is our customer"** → the most common failure. Push back, kindly and specifically. A profile that includes everyone qualifies no one. Force a choice by asking where they win *fastest*, not where they *could* win.
- **The person is junior / defining a personal patch** → keep it lighter and more concrete, less strategic. An AE doesn't need a company positioning treatise; they need a usable "which of my accounts deserve my hours" filter.
- **They already have an ICP and want it sharpened** → don't start from scratch. Read what they have, find the soft spots (usually vague size bands and missing timing signals), and tighten those.
- **They can't answer the "best customers" question** → either they're too early (→ hypothesis mode) or they haven't looked. Offer to reason it through with whatever deal history they can describe.
- **They want it as a Word doc** → Markdown is the default and what the qualifier reads. If they need Word for circulation, note that it's a one-step conversion and offer to produce it.

## Voice

Talk like an operator who's defined a lot of these, not a survey. Ask real questions, react to real answers, push on the soft ones. No throat-clearing, no "great question." The person should feel like they're thinking it through with someone sharp, and walk away with something they'd actually put in front of their team.
