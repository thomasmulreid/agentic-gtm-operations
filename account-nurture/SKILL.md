---
name: account-nurture
description: >-
  Build a personalized, well-researched nurture touch for a named account, in
  three human-gated stages, and never send anything. For account managers and
  customer success managers keeping accounts warm. Works from whatever context
  is available — pasted notes, prior conversation history, memory, and any
  connected CRM/email/Slack where those exist — and never assumes a connector is
  present. Reads the user's own company website to understand what's sellable,
  so cross-sell and expansion suggestions come from real products, not
  guesswork. Use whenever someone wants to nurture, re-engage, warm up, check in
  on, or build a value touch for a specific account. Triggers: "nurture
  [account]," "build a touch for [account]," "what should I send [account],"
  "re-engage [account]," "time to check in with [account]," "warm up [account]."
  If no account is named, or there isn't enough context to work from, it asks
  before doing anything.
---

# Account Nurture

Turns the account touch — the "I should reach out to them with something useful" that always loses to everything else on the plate — into a short review-and-send. The skill does the research, shows its sources, aims the touch at a goal the user chooses, and hands over copy the user edits and sends by hand. It never sends anything itself.

Built for account managers and customer success managers alike. The difference between "keep them warm," "set up the renewal," and "grow the account" isn't in the title of the person running it — it's in the goal they pick at the start. So the skill asks.

## Step 0 — Know the account, or ask

The account comes from the request: "nurture Well.ca," "build this month's touch for Acme." Before anything else:

- **If an account is named and there's usable context** — pasted notes, prior history in this conversation, memory of past touches, or a connected source that has the account — proceed.
- **If no account is named, or there's too little to work from** — ask. Don't invent an account and don't run on air. Ask for: which account, what the relationship is (new, established, gone quiet), anything recent the user knows, and — if this is the first touch — the user's own company website so the skill can learn what's sellable. Keep it to one batched ask, not a drip.

Pull context before asking the user to repeat themselves. Check this conversation, check memory of prior touches for this account, and check any connected source that would hold it. Only ask for what genuinely isn't available.

## Step 1 — Pick the goal (the intent gate)

Before researching, ask what the touch is reaching toward. The goal shapes what research matters and what the copy is allowed to do, so this comes first.

> **What do you want this touch to move toward?**
> - **Renewal** — protect the account and set up the renewal conversation
> - **Rapport and trust** — pure value, no ask, keep the relationship warm
> - **Expansion** — grow within what they already have (more seats, usage, scope)
> - **Sell an additional product or service** — bring them something new

**If they pick "additional product or service," ask which — specifically.** Pull the options from what the user's company actually sells (see "What's sellable," below) and help them name the one that fits this account, rather than leaving it vague. A touch aimed at "sell them something" with no specific thing behind it reads generic and won't land.

The goal steers everything downstream:
- **Renewal** → research weights toward usage, satisfaction signals, timing relative to the renewal date, any risk showing in recent contact.
- **Rapport and trust** → suppress every ask; the touch leads with something useful and stops. No pitch, not even a soft one.
- **Expansion** → look at their current footprint and where they're clearly getting value, and where more of the same would help.
- **Additional product/service** → run the fit test on the specific named product: given this account's business and situation, would they actually benefit, or is this a stretch?

Hold to the goal through all three stages. A rapport touch that ends in a pitch, or a renewal touch that ignores the renewal, has failed regardless of how good the copy reads.

## What's sellable — read it, don't assume it

The cross-sell and expansion suggestions have to come from what the user's company genuinely offers, not a guess. On the first touch for a user (or whenever the sellable set isn't already known from this conversation or memory):

- Ask for the user's company website and read the product/services pages. Build a working list of what's sellable — the products, the services, the lines of business — from the real pages.
- Keep that understanding in play for the account. When a goal involves selling or expanding, draw the options from this real set.
- If the site is thin or the offering isn't clear from it, say so and ask the user to name what they sell rather than inventing product lines.

This is what replaces any hardcoded product taxonomy. The skill knows what can be sold because it read the actual offering, and it's honest when it couldn't.

## The core rule — source it or flag it

**Every factual claim about the account — news, a tech change, a personnel move, a usage metric — must be tied to something pulled this run, or it doesn't go in the touch.** If it can't be sourced, mark it "worth checking" and hand it to the user. Never fill a gap from memory or assumption. A wrong claim in a client touch costs the user credibility; when in doubt, flag, don't assert.

## Research — use what's there, assume nothing

There is no required connector. Work from whatever is available, in roughly this order, and be honest about what's missing:

1. **This conversation and the request** — what the user pasted or already told you.
2. **Memory and prior touches** — what past runs recorded for this account: last touch date, angle used, asset shared, so this touch doesn't repeat the last one. Reach for this actively; it's what makes the skill sharper over time.
3. **Connected sources, where they exist** — if a CRM is connected, pull opportunity/renewal/owner context. If email or Slack is connected, check recent threads to see what was actually said and catch anything inbound to react to. If a research or web tool is available, look for account news, leadership changes, and relevant trends. **Mention these as available options; never assume they're connected.** If they aren't, say the touch is lighter without them rather than proceeding as if the research were complete.
4. **The user's knowledge** — if the user knows something the tools can't see, invite it and fold it in.

Every external finding carries its source. No source, no claim.

## The three stages

Human checkpoint after each. Don't skip ahead; don't write client copy before stage 3.

### Stage 1 — Research → insight slate

Gather from what's available, then present a slate that shows the work: where things stand (2–3 sentences on the relationship, last touch, and the goal for this one); **relevant insights** (each sourced, with why it matters for the chosen goal); **uncertain — worth checking**; **considered and set aside** (with why); and, if the goal involves selling or expanding, **which sellable products fit** and why. Close by asking the user to confirm, cut, or flag. Stop and wait.

### Stage 2 — Approaches

From confirmed insights only, propose **2–3 distinct angles** — not copy. Each: a label, what it leads with, why it fits now (tied to a confirmed insight and the chosen goal), what it's carrying (a resource, a specific product, a piece of value), and the response it's aiming for. Ask which to run or blend. Stop and wait.

### Stage 3 — Output

Write the finished touch for the chosen approach, in the requested channel (email, Slack, whatever they asked for).

- **Voice:** the user's own — short, direct, plain. Reads like a person who knows the account wrote it in five minutes, not a marketing program. No lists in the body.
- **Structure:** an opening tied to a confirmed insight → the value or the specific offer → a light, specific reason to reconnect that matches the goal. For a rapport goal, no ask at all.
- **The user sends it.** The skill produces copy and stops.

Then: **record the touch** to memory or the conversation (date, goal, approach, what was shared, angle) so the next touch doesn't repeat it, and offer to set the user a reminder for the next one — a reminder to the user only, never anything external. Confirm timing first.

## Personalization over templates

Not a generic program with the name swapped in. If the touch could go to any account, it failed — rework it against the specific confirmed insights. A templated touch is exactly what makes accounts go cold, and people won't send what reads generic.

## Edge cases

- **No account named / too little context** → ask before doing anything (Step 0). Don't invent.
- **First-ever touch for an account** → say so, do full research, note this run is the memory baseline the next one builds on. Ask for the company website if the sellable set isn't known yet.
- **No connectors at all** → work from what's pasted and known; be honest the touch is lighter, and lean on the user's own knowledge to fill gaps rather than manufacturing findings.
- **Recorded history and a connected source disagree** → trust the live source, flag it; a draft may have been edited or never sent.
- **A key stakeholder has left** → flag it prominently; the touch may need a new contact.
- **Fresh inbound in a connected inbox/Slack** → outranks a scheduled touch; flag it at the top and respond to the live thread first.
- **User asks the skill to send it** → decline warmly; all external sending stays with the user by design.
- **Thin research** → say so plainly, offer a light value touch matched to the goal, never manufacture a reason to reach out.
- **"Sell additional product" but no specific product** → help narrow it from the sellable set read off the website; don't run a vague sell.

## Voice inside the run

Talk like a sharp colleague helping aim a touch, not a wizard filling fields. Lead with what matters. Don't over-explain the stages; run them. Be honest at every gate about what was found, what wasn't, and what that means for how good the touch can be.
