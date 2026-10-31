---
name: retirement-account-order
description: Build a plan and Excel workbook for which retirement accounts to fill first (401(k), 403(b), 457(b), HSA, Roth or traditional IRA), whether you're on track, and when to start, for households under $200K. Use when someone asks "how do I maximize retirement savings," "401(k) or IRA first," "Roth or traditional," "should I open an IRA," "am I on track for retirement," "am I too late to start," "what do I do with my pension," or "when should I start saving for retirement."
metadata:
  version: 1.0.1
---

# Retirement account order

Built for households earning under $200K a year in total (all earners combined, before tax).

The person wants to get the most out of every dollar they put toward retirement: which account to fill first, whether to choose Roth or traditional, whether they're on track, and how much starting now matters. The deliverable is an Excel workbook built from their own numbers: an account-by-account plan with a dollar amount per paycheck, a Roth-or-traditional comparison, an on-track check, a start-now calculator, and a check-in tied to moments that already happen. The chat reply leads with one action to take this week.

This is financial education, not financial advice. Lay out the trade-offs and the math so the person can decide. Never name a specific fund, stock or provider. Say once, briefly, that you are not a financial advisor.

Use plain language throughout. Define "match," "vesting," "pension," "Roth," "traditional," "HSA" and "expense ratio" the first time they appear. Never sound judgmental about how much someone has saved or when they started.

## Before you start

If `.agents/money-ops-context.md` exists (or `.claude/money-ops-context.md`), read it first. Use the household, income, pay schedule, accounts, employer benefits and goals it already has, confirm anything that looks out of date, and only ask for what's missing. If it doesn't exist, go ahead with what you're given, and suggest running **money-ops-context** once so the next skill doesn't have to ask.

## 1. Check the foundation

Retirement accounts work best once two things are in place. Check them before building the plan:

- **Debt above 8% interest** (most credit cards, payday and personal loans)
- **A starter emergency fund** (about one month of essential expenses)

If either is missing, say so plainly and hand off to **retirement-debt-balance** for the full priority order. Still include the employer match step below, because no debt payoff beats an instant match.

If household income is $200K or more, say this guide is built for households under $200K, give the general account order in a few sentences, and suggest a fee-only fiduciary planner.

## 2. Gather the numbers

Ask only for what the context file doesn't have, grouped, not one question at a time. Ranges are fine; mark estimates.

- **Each earner:** age, gross pay, take-home per paycheck, how many paychecks a year (52, 26, 24, 12, or 10 for some school staff)
- **Tax filing status:** single, married filing jointly, or head of household, and their state
- **Workplace plans for each earner:** every plan offered (401(k), 403(b), 457(b), pension), whether a 457(b) is from a government employer or a nonprofit, and for each one: match formula, whether the match is paid per paycheck and whether the plan "trues up" at year end, vesting schedule, Roth option, after-tax contribution option, current contribution percentage, and automatic yearly increases
- **Pension, if any:** required contribution taken from pay, years of service, and the estimated monthly benefit from their latest pension statement
- **Social Security:** their estimated benefit from their Social Security statement, and whether their job pays into Social Security
- **HSA:** is their health plan HSA-eligible, does the employer contribute, and can they pay routine medical bills from cash
- **Accounts they already have:** type and rough balance (old 401(k)s, IRAs including any pre-tax IRA balances, Roth IRAs, HSA)
- **Student loans:** federal or private, and whether they're on income-driven repayment or working toward Public Service Loan Forgiveness
- **Self-employment or side income**, if any
- **When they hope to retire**, roughly
- **How much a month they can put toward retirement** right now

## 3. Look up current figures before using them

Limits and rules change every year. Search for the current year's values; never state them from memory:

- 401(k)/403(b) employee limit, 457(b) limit (separate from the 401(k)/403(b) limit), and the total limit including employer and after-tax money
- Catch-up amounts for age 50+, any higher catch-up for specific ages, and the 403(b) catch-up for long-time employees of certain employers
- The government 457(b) special catch-up for the three years before the plan's normal retirement age, and how it interacts with the age-50 catch-up
- Whether catch-up contributions must go in as Roth above a certain income
- IRA limit, IRA catch-up, and the deadline for prior-year IRA contributions
- Roth IRA income limits by filing status
- Traditional IRA deduction income limits when the person or their spouse has a workplace plan
- HSA limits (self-only and family) and HSA catch-up
- Saver's Credit and Earned Income Tax Credit income limits
- SEP-IRA and Solo 401(k) limits, if self-employed
- Federal tax brackets and standard deduction for their filing status, and their state's income tax treatment of retirement income
- Social Security rules for public employees who also earn a pension
- Current income-driven repayment and Public Service Loan Forgiveness rules, if they have federal student loans
- A published savings-by-age benchmark and a published retirement income replacement guideline, for the on-track check
- What counts as a high fund fee (expense ratio), from a published source

Every figure goes in the workbook's Limits & Sources tab with the year, the source name and the link. Cite the most useful sources in chat.

## 4. Build the account order

Fill each step before moving extra money to the next one. For two earners, run the workplace steps for each earner separately; each person has their own workplace and IRA limits. A family HSA limit is shared between spouses.

1. **Workplace plan up to the full match.** The match is an instant 50% or 100% return. Show the exact percentage of pay needed to get all of it, per earner. If they're likely to leave before the match vests, show what that does to its value. **No match?** Skip this step. If they have a pension instead, note that the pension is their employer's contribution.
2. **HSA, only if eligible and they can pay routine medical bills from cash.** Money goes in tax-free, grows tax-free, and comes out tax-free for medical costs; after 65 it can be used for anything, taxed like a traditional account. Tell them to keep receipts for medical bills they pay from cash, since those can be reimbursed later. If they'd spend the HSA every year, treat it as a medical account, not retirement savings, and move this step after the IRA.
3. **IRA up to the limit.** Roth or traditional, following step 5. An IRA usually offers more fund choices and lower costs than a workplace plan.
4. **Back to the workplace plans.** Raise contributions until each reaches its limit or the amount they can afford. **Public employees with both a 403(b) and a 457(b)** can contribute up to the limit in each, double the room. Money in a government 457(b) can be taken out after leaving that job, at any age, without the usual 10% early-withdrawal penalty, which makes it useful for early retirement. Two exceptions: money rolled into the 457(b) from another plan or an IRA keeps the penalty, and money moved out of the 457(b) into an IRA follows IRA rules and loses the exception.
   - **Nonprofit 457(b)s work differently.** They can't be rolled into an IRA or other plan the same way, and the money can be reached by the employer's creditors. Flag the difference and don't apply the government 457(b) advice to them.
   - **Catch-ups:** the 15-year 403(b) catch-up needs 15 years of full-time service with the same eligible employer (such as a public school system) and a plan that allows it. Deferrals above the standard limit count toward it first, then toward the age-50 catch-up. A government 457(b)'s special catch-up for the three years before the plan's normal retirement age can't be stacked with the age-50 catch-up in the same plan; use whichever allows more.
5. **After-tax workplace contributions, if the plan allows them** and also allows converting them to Roth. See step 6.
6. **Anything beyond that** goes to a regular investment account, or toward other goals in **retirement-debt-balance**.

Adjust the order when:

- **The workplace plan is expensive.** If its funds charge more than the looked-up "high fee" level, an IRA comes before extra workplace contributions. For 403(b) plans with many vendors, show how to compare each vendor's fees, without naming any.
- **No workplace plan.** Start at step 2 or 3. If self-employed, add a SEP-IRA or Solo 401(k) with current limits.
- **A spouse without earned income.** They can still have an IRA funded from the household's income (a spousal IRA). Include it.

### The savings target

About 15% of gross pay toward retirement, reached gradually. Count everything going in: their contributions, the employer match, and any required pension contribution taken from pay. A teacher already paying 9% into a pension isn't starting from zero. If the target is out of reach, set a starting percentage and add 1% with each raise. Show both gross and take-home amounts so the target never looks like more than it is.

### Timing

- **Keep the full match all year.** If the match is paid per paycheck and the plan doesn't true up at year end, hitting the limit early means losing the match in later paychecks. Spread contributions so the limit lands on the last paycheck of the year.
- **IRA deadlines.** Contributions for last year can still go in until the tax filing deadline. Show both years when that window is open.
- **10-month pay.** Base every per-paycheck amount on the actual number of paychecks.

## 5. Roth or traditional

Explain in two sentences: Roth means paying tax now and taking money out tax-free later; traditional means a tax break now and paying tax when you take it out.

Then compare fairly, with their numbers:

- **Today's bracket vs. an estimated retirement bracket.** Estimate retirement income from savings, pension and Social Security, then find the bracket that income lands in. Many retirees pay a lower rate than they did while working, which favors traditional more often than people expect.
- **Invest the difference.** A fair comparison assumes the tax break from a traditional contribution gets invested too. Show both accounts growing on that basis.
- **State taxes.** Include their state's tax on retirement income, and note that moving states in retirement changes the math.
- **Credits.** Traditional contributions lower taxable income, which can raise the Saver's Credit or Earned Income Tax Credit. Show the dollar difference if it applies.
- **Student loans.** On income-driven repayment, traditional contributions lower the income the payment is based on, which lowers the payment. For someone working toward Public Service Loan Forgiveness, that can mean more forgiven. Show the payment difference using current rules.

Then lean, plainly:

- **Low bracket now and no student loan effect** (students, early career, low earners): Roth usually wins.
- **Middle or higher bracket for this range, a pension coming, or on income-driven repayment:** traditional or a split often wins. Show why with their numbers.
- **Unsure:** splitting between both is a reasonable hedge.

Mention that Roth IRA contributions (not earnings) can be taken back out without penalty, which gives some backup flexibility, and that taking money out of retirement accounts early usually means taxes and penalties.

## 6. Over the Roth IRA income limit

Single filers near the top of this range can cross it. Cover the options in order:

1. **A Roth option in the workplace plan,** if one exists. No income limit applies.
2. **A "backdoor Roth":** contribute to a traditional IRA without taking the deduction, then convert it to Roth. Explain the main trap: if they have any pre-tax money in a traditional, SEP or SIMPLE IRA, the conversion is taxed in proportion to all of it, not just the new contribution. One fix is rolling pre-tax IRA money into a workplace plan first, if the plan accepts it. It also needs a specific tax form at filing time.
3. **After-tax workplace contributions,** if the plan allows them and lets them be converted to Roth. Show the room left under the total workplace limit.

Flag that each of these depends on plan rules and tax details: confirm with the plan administrator or a tax professional before doing it.

## 7. Are you on track?

For anyone already saving, show:

- **Savings compared with income at their age,** against the looked-up benchmark, with the source named. Frame it as where they are and what moves it, never as behind.
- **Retirement income estimate:** savings at retirement turned into yearly income (using the withdrawal rate on the Assumptions tab), plus pension, plus Social Security, compared with the looked-up income replacement guideline.
- **The gap, if any,** and the extra monthly amount that closes it at the assumed return and at a lower return.

If they don't have their Social Security or pension estimate, tell them where to get it and use a marked placeholder until they do.

## 8. When to start: show the math

For someone who hasn't started, or is early on, the answer is now, with whatever amount fits. Show why with their own monthly amount:

- The same monthly contribution started at their current age, 5 years later, and 10 years later, grown at the assumed return to their retirement age
- The same comparison at a lower return, so it isn't sold as a sure thing
- How much more per month someone starting 10 years later would need to end with the same amount

Use amounts as small as $25 a paycheck when that's what fits. For someone 50 or older, show what catch-up contributions add, and frame it as what's still possible.

Label all growth figures as estimates at a stated return, not promises.

## 9. Special cases

Raise any that apply:

- **Old 401(k)s from past jobs:** list each one. Moving them into an IRA or the current employer's plan keeps them growing and in one place; cashing out usually costs taxes and penalties. If a backdoor Roth is in play, the workplace plan is usually the better home for pre-tax money. If the current plan is a government 457(b), note that rolled-in money doesn't get the 457(b)'s penalty-free access, and that rolling 457(b) money out to an IRA gives that access up.
- **Auto-enrollment:** default contribution rates are often below the match. Check theirs.
- **Changing jobs soon:** check vesting before leaving.
- **401(k) loans and early withdrawals:** a last resort.
- **Part-time workers:** some may now be eligible for their employer's plan after a few years. Look up the current rule.

## 10. Build the workbook

Load the xlsx skill before building. Create these tabs:

1. **Start Here** – the one action for this week, the headline, a three-line summary, a "last updated" date, and how to use the workbook.
2. **Inputs** – every number the person gave, each earner in its own column. All other tabs read from here.
3. **Assumptions** – expected return, lower return, inflation, withdrawal rate, tax bracket now and estimated in retirement, state tax, retirement age, yearly raise. All editable, each with a one-line explanation.
4. **Account Order** – each account, per earner: this year's limit, planned contribution per paycheck, per month and per year, room left, and status. Per-paycheck amounts use the actual number of paychecks.
5. **Roth vs Traditional** – both paths with the tax break invested, at today's and the estimated retirement bracket, plus any credit or student loan payment difference.
6. **On Track** – savings vs. the benchmark, the retirement income estimate (savings, pension, Social Security), and any gap with the monthly amount that closes it.
7. **Start Now** – the start-now, 5-years-later and 10-years-later comparison at both returns.
8. **Limits & Sources** – every looked-up figure with year, source name and link.
9. **Check-in** – one row per trigger: open enrollment, a raise, a new job, turning 50, a new pension or Social Security statement. Each row says what to update.

Workbook rules:

- No typed-in numbers inside formulas. Every value comes from Inputs, Assumptions or Limits & Sources.
- Flag in red: any contribution over its limit, a 457(b) special catch-up stacked with the age-50 catch-up in the same plan, a shared HSA family limit exceeded across spouses, a total over the money available, or a contribution pace that hits the limit before the last paycheck when the match is per paycheck.
- Estimated inputs and placeholders are visibly marked.
- Readable on a phone: large text on Start Here, key numbers on the first screen.
- Mention that the file opens in Google Sheets too.

Recalculate and open the finished file to check that formulas work, no limit is crossed by mistake, and nothing shows an error before sending.

## 11. Deliver

In chat:

1. **One action for this week,** specific enough to do in five minutes: "Log into your benefits site and change your 401(k) from 4% to 6%," or the exact question to ask HR or the plan administrator, written out word for word.
2. **The headline:** "Your next retirement dollar goes into ____, because ____."
3. The account order with this year's amounts per paycheck.
4. The Roth-or-traditional lean, in one or two sentences, with the main reason.
5. The on-track result, or the start-now number for someone just starting.
6. Two or three facts that would change the plan (a raise, a new job, losing HSA eligibility, crossing an income limit, a new pension statement).
7. When to bring in a professional, for the specific decision only: pension payout choices, when to claim Social Security, a backdoor Roth, a business, an inheritance, or complex tax questions. Suggest a fee-only fiduciary planner. Being close to retirement is never a reason to stop short of giving the full plan.
8. The workbook, and the sources worth citing.

If the person gave numbers the context file doesn't have, offer to update `.agents/money-ops-context.md`.

## Rules

- Use their numbers. A plan without dollar amounts per account is not finished.
- Never state limits, income ranges, brackets, benchmarks or rules from memory.
- No specific fund, stock or provider picks. Explaining fund types and fees is fine.
- Growth figures are estimates at a stated return, always shown next to a lower-return version.
- Count every dollar going in, including pension contributions, before saying how far someone is from a target.
- Present judgment calls (Roth vs. traditional in the middle, IRA vs. extra workplace contributions, HSA placement) as choices with trade-offs.
- Never imply someone is behind or started too late. State where they are and the next step.

## Related skills

- **money-ops-context** — reads the household's numbers first, and takes back any updates
- **retirement-debt-balance** — decides whether retirement, debt or the emergency fund comes first; this skill takes over once retirement is the next step
