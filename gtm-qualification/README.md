# GTM Qualification — a Claude Skill

Turn "which of these leads is worth my time" from a gut call into a repeatable,
honest score. Works on whatever you can paste or upload. No CRM connection, no setup
beyond editing one file.

## What it does

Two jobs, one skill:

- **Qualify a single lead.** Paste a company, a person, or a forwarded inbound email.
  You get a verdict (qualified / worth a look / disqualified), a weighted score, the
  reasoning per dimension, an honest list of what couldn't be confirmed, and a
  recommended next step.

- **Score a list.** Upload a CSV of accounts. You get a ranked table, the top few to
  work first with the reason each earns it, the bottom grouped by why it was cut, and
  a downloadable scored CSV to drop back into your tools.

It researches to fill gaps itself where it can, and it tells you plainly what it
couldn't find rather than inventing it. A lead scored on real data and honest unknowns
beats one scored on confident guesses every time.

## Install

1. Save the `.skill` file to your Claude profile (the **Save skill** button on the
   file card), or unzip it into your skills directory.
2. That's it — it runs on sensible B2B defaults out of the box.

## Make it yours (the part that matters)

The skill scores against *your* definition of a good lead, and that definition lives
in one file: **`references/config.md`**. Out of the box it's on a generic B2B rubric
and will tell you so before every run. Fifteen minutes editing the config is the
difference between a generic score and one that actually reflects your ICP.

Walk through `config.md` top to bottom:

1. **ICP** — write one plain paragraph describing the account you're thrilled to land,
   including the hard disqualifiers.
2. **Fit dimensions** — replace the placeholder rows with the attributes that actually
   make an account a fit for you. Set weights.
3. **Timing signals** — name the trigger events that mean *now* in your market.
4. **Weighting** — set the fit-vs-timing split to match how you sell.
5. **Thresholds** — decide where qualified / worth-a-look / disqualified fall.
6. **Hard disqualifiers** — the automatic-no list.
7. **Notes** — any hard-won read that doesn't fit the boxes.

Then flip the status marker at the top of `config.md` from `DEFAULT` to `TUNED`. That
switches off the "this rubric is untuned" warning — which is there on purpose until
you've done the work.

Everything you'd ever change is in that one file. You don't touch `SKILL.md`.

## What it won't do

- It won't connect to your CRM. It scores what you give it. (That's the point — no IT,
  no integration, runs anywhere.)
- It won't send anything. It qualifies and ranks; the outreach is yours.
- It won't fabricate to fill a blank. Missing data is reported as missing.

## Want it wired to your actual stack?

This public version works on pasted and exported data. A version pointed at your live
CRM — reading your real fields, writing scores back, running on your accounts
automatically — is a different build. That's a scoped engagement, not a config edit.
If that's what you need, the person who made this does exactly that.
