# ICP Definer — a Claude Skill

Sit down with Claude for twenty minutes and walk out with a written, usable Ideal
Customer Profile. Works whether you're defining one for a whole company, your own
sales territory, or a startup that's never written one down.

## What it does

It interviews you. Not a form — a real back-and-forth that asks the right questions,
leans on what your best customers actually have in common, pushes back when your
answers are vague, and produces one clean ICP document at the end.

The output is a Markdown file with your fit criteria, timing signals, disqualifiers,
and thresholds — structured so the **gtm-qualification** skill can score real accounts
against it directly. Define once, then score everything.

## Who it's for

- A marketing or revenue leader defining a company-wide ICP.
- An AE building a "which of my accounts deserve my hours" filter for their patch.
- A founder writing their first customer profile from a handful of early deals.

Same method, adjusted depth. It asks who you are before it decides how deep to go.

## How to use it

Just start talking: "help me define our ICP," "who should I be targeting," or describe
what you sell and ask who to sell it to. It takes the interview from there and writes
the doc when it has enough.

## The pair

This is one half of a pair:

1. **icp-definer** (this skill) — figure out who you're targeting, produce the doc.
2. **gtm-qualification** — score real accounts and lists against that doc.

Run this one first if you don't have a sharp ICP written down. If you already do, skip
straight to the qualifier.

## What it won't do

- It won't invent your ICP from your website and hand it to you as fact. What your best
  customers share is something you know and it doesn't — it draws that out, it doesn't
  fabricate it.
- It won't let "everyone is our customer" stand. A profile that includes everyone
  qualifies no one, and it'll push back on that.
- It won't dress a guess as a finding. No customers yet? It says the output is a
  hypothesis to validate, not a proven profile.
