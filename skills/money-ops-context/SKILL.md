---
name: money-ops-context
description: Create or update the household money context file every other skill in this library reads first — who is in the household, income and pay schedule, essential expenses, debts, savings and retirement accounts, employer benefits, insurance, and goals. Use at the start before using other money ops skills, when someone says "set up my money context," "here's my financial situation," "remember my debts," "update my numbers," or "I got a raise," or whenever a skill keeps asking for the same background. It creates `.agents/money-ops-context.md`.
metadata:
  version: 1.0.1
---

# Money ops context

Every money ops skill needs the same background: who's in the household, what comes in and how often, what has to go out, what's owed, what's saved, and what the household is working toward. This skill writes that down once, in one file, so no other skill has to ask again.

The file lives at `.agents/money-ops-context.md`. If you find it at `.claude/money-ops-context.md` instead, use it and offer to move it.

## What never goes in the file

This file sits in the person's own project folder, but treat it as something they might share by accident. Never write down:

- Account numbers, card numbers, routing numbers, or the last four digits beyond what's needed to tell two accounts apart
- Social Security numbers or any government ID
- Passwords, PINs, or security answers
- Login usernames for banks or benefits sites

If the person pastes any of these, leave them out and say so in one line. Name accounts by type and institution instead ("Chase checking," "Fidelity 401(k)").

## Step 1: Check what exists

**If the file exists:** read it, give a three-line summary of what's in it, show the version and the last two changelog entries, and ask which sections to update. Only gather what's needed for those sections.

**If it doesn't exist,** offer two ways to start:

1. **Draft from what's here (faster):** read whatever the person has shared — a pay stub, a budget spreadsheet, a loan statement summary, a benefits guide — and draft every section. Then ask what's wrong and what's missing.
2. **Build it together:** walk through the sections one at a time, a few questions each. Ranges are fine; exact figures are not required.

## Step 2: Fill each section

Use only what the person or their documents say. Anything not given stays as "Not recorded." Mark estimates with "(est.)". A context file with gaps is useful; a context file with guesses breaks every skill that trusts it.

```markdown
# Money ops context
**Version:** 1.0 · **Last updated:** [date] · **Kept up by:** [person]

## Household
- People in the household, and ages of any kids or other dependents:
- Earners: [one / two]
- Tax filing status: [single / married filing jointly / married filing separately / head of household]
- State:
- Total household income before tax (all earners, a range is fine):

## Income
| Earner | Gross per year | Take-home per paycheck | Paid how often | Steady or irregular |
|---|---|---|---|---|
- For irregular income, a typical low month:

## Essential monthly expenses
| Expense | Monthly amount |
|---|---|
Cover: housing, utilities, food, transportation, insurance premiums, childcare, phone and internet, minimum debt payments.

## Debts
| Debt | Whose | Balance | Interest rate | Minimum payment | Notes |
|---|---|---|---|---|---|
Notes: promo rate end date; for student loans, federal or private, and in school, grace period, or repaying.

## Savings and accounts
| Account type | Institution | Balance (approx.) | Whose |
|---|---|---|---|
Cover: checking, savings, emergency fund, 401(k)/403(b), IRA, HSA, 529, brokerage.

## Employer benefits
| Earner | Retirement plans (401(k), 403(b), 457(b), pension) | Match formula | Vesting | HSA eligible | Dependent care FSA |
|---|---|---|---|---|---|
- Pension: required contribution from pay, and estimated monthly benefit from the latest statement:
- Social Security: estimated benefit from the latest statement, and whether each job pays into it:

## Insurance
- Health:
- Life (through work or own, and amount):
- Disability (through work or own):

## Goals
| Goal | Target amount | Target date | Priority |
|---|---|---|---|

## Preferences
- Debt payoff method, if they've picked one: [avalanche / snowball / not decided]
- Anything they've ruled out (e.g. "won't touch the 401(k)"):

## Open questions
Things the household hasn't settled that skills should flag, not guess.

## Changelog
- [date] v1.0 — Created. [what it was drafted from]
```

## Step 3: Rules for the file

- **Their numbers only.** Never fill a gap with an average or a "typical" figure. Leave it "Not recorded."
- **Decided vs. considering.** Only decisions go in Preferences. "Thinking about refinancing" goes under Open questions.
- **No judgment.** Record the numbers as they are. Don't label spending, debt, or savings as good or bad.
- **Plain words.** Write it so either partner, or anyone helping, can read it.
- **One page if possible.** Link to a budget spreadsheet instead of copying it in.

## Step 4: Save and version

Save to `.agents/money-ops-context.md` (create the `.agents/` folder if needed). On every real change, bump the version (1.0 → 1.1 for updated numbers, 2.0 for a big life change like a new baby, a move, or a new earner) and add a dated changelog line saying what changed.

When another skill learns something durable mid-task — a raise, a paid-off card, a new loan — suggest adding it here rather than letting it get lost in that one output.

## Related skills

Every skill in this library reads this file first. The ones that lean on it most:

- **retirement-debt-balance** — uses every section to build the priority ladder and workbook, and suggests updates when the numbers change
- **retirement-account-order** — uses Income, Employer benefits and Savings and accounts to put retirement accounts in order
