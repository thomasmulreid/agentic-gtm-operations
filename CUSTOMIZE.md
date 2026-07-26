# Make these skills yours

The three skills work the moment you install them, on sensible generic defaults. But they get sharp when they know your company, your product, and your market. This takes about five minutes per skill — less if you use the paste-in prompt at the bottom.

There are two ways to do it. Pick one.

---

## Option A — the fast way: let Claude interview you

Install the skill, then paste the prompt for it (below) into a chat with that skill available. Claude will ask you a handful of questions and rewrite the skill's config for you. Confirm the result, and you're tuned.

This is the recommended path. It's faster than editing files by hand, and it's the same guided approach the skills themselves use.

## Option B — the manual way: edit the config

Each skill's customization lives in one file. Open it, edit it, save it. Details per skill below.

---

## icp-definer

**What to customize:** Almost nothing — and that's the point. This skill *is* the customization step. You don't configure it; you run it, answer its questions, and it produces your ICP doc. The one thing worth doing is feeding it context up front: if you have a list of your best current customers, have it ready. The skill builds the sharpest ICP from real won-deal patterns, not aspiration.

**Paste-in prompt:** none needed. Just start: *"Help me define our ICP. Here's what we sell: [one sentence]. Our five best customers are: [names or descriptions]."*

---

## gtm-qualification

**What to customize:** the scoring rubric — your ICP, the fit dimensions, the timing signals, the weights, and the score thresholds. All of it lives in one file: `references/config.md`.

**The easy path:** run `icp-definer` first. It produces an ICP doc in exactly the shape this skill reads. Hand that doc to the qualifier and it scores against it directly — no config editing at all. That's the intended flow.

**The manual path:** open `references/config.md`, replace the placeholder ICP paragraph, fit dimensions, timing signals, weights, and thresholds with your own, then change the marker at the top from `DEFAULT` to `TUNED`. The file is self-documenting — every section tells you what to put there.

**Paste-in prompt (Option A):**

> I've installed the gtm-qualification skill. Interview me to build my qualification config. Ask me, a few questions at a time: what my company sells; what my best-fit accounts look like (size, industry, business model); what the hard disqualifiers are; what "timing" signals mean a company is worth calling now (funding, hiring, a specific pain); and how much I care about fit versus timing. When you've got enough, rewrite the skill's `references/config.md` with my answers, set the marker to TUNED, and show me the result to confirm. Push back if any of my answers are vague.

---

## account-nurture

**What to customize:** two things, and neither is a file edit — the skill picks them up at runtime.

1. **What you sell.** The first time you use it, it'll ask for your company website and read your product/services pages to learn what's sellable. Have your URL ready. If your site doesn't make the offering clear, just tell it what you sell.
2. **Your connectors.** If you have a CRM, email, or Slack connected to Claude, the skill will use them to research the account more deeply. If you don't, it works from what you paste — just know the touch is lighter without them.

**Paste-in prompt (Option A):**

> I've installed the account-nurture skill. Before I use it on a real account, learn my context: my company website is [URL] — read it and tell me back what you understand I can sell, so we're aligned. Then ask me which connectors I have available (CRM, email, Slack) so you know what you can pull from. Once that's set, I'll give you an account to nurture.

---

## A note on the two-tier idea

These configs get you a genuinely useful, self-tuned version of each skill. What they don't do is wire the skills into your actual systems — reading your real CRM fields, running against your live account list, writing scores back. That's a build, not a config edit, and it's deliberately not something a paste-in prompt can do. If that's where you're headed, that's the paid version of this — [get in touch](https://www.linkedin.com/in/thomasmulreid/).
