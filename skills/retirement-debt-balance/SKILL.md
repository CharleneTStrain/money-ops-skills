---
name: retirement-debt-balance
description: Build a priority ladder and Excel workbook showing where each dollar should go between retirement saving, debt payoff, an emergency fund, kids' college, and other goals, for households earning under $200K a year. Use when someone asks "should I pay off debt or save for retirement," "where should my extra money go," "am I saving enough," "should I take the 401(k) match or pay down my card," or wants a plan for balancing money priorities.
metadata:
  version: 1.1.1
---

# Balancing retirement saving, debt and other priorities

Built for households earning under $200K a year in total (all earners combined, before tax).

The person wants to know where their next dollar should go. The deliverable is an Excel workbook built from their own numbers: an ordered ladder of priorities with a dollar amount on each rung, a debt payoff schedule, the assumptions behind it, and a monthly check-in. The chat reply gives the headline action and a short summary; the workbook holds the detail.

This is financial education, not financial advice. Lay out the trade-offs and the math so the person can decide. Do not recommend specific funds, stocks or providers. Say once, briefly, that you are not a financial advisor.

Use plain language throughout, in chat and in the workbook. Define terms like "vesting," "Roth" or "match" the first time they appear. Never sound judgmental about how much someone earns, owes or has saved.

## Before you start

If `.agents/money-ops-context.md` exists (or `.claude/money-ops-context.md`), read it first. Use the household, income, pay schedule, expenses, debts, accounts, benefits, and goals it already has, confirm anything that looks out of date, and only ask for what's missing. If it doesn't exist, go ahead with what you're given, and suggest running **money-ops-context** once so the next skill doesn't have to ask.

## 1. Household income first

If the context file has household income and household size, use them. Otherwise ask for total household income before tax, all earners combined, and how many people live in the household. A range is fine.

- **Under $200K:** continue.
- **$200K or more:** say this guide is built for households under $200K. Give the general order of priorities from the ladder below in a few sentences, without a workbook, and suggest a fee-only fiduciary planner for the details.

### Starting defaults (internal only)

Use this table to pick starting defaults. It is for you, not the reader: never tell the person which band they are in, and never use band names in chat or on Start Here.

| Household income | Starter emergency fund | Retirement target | Roth lean |
|---|---|---|---|
| Under about $60K | $500, then one month of essentials | Full match, then add 1% of pay with each raise | Roth, unless the Saver's Match applies (see Roth or traditional) |
| About $60K–$120K | One month of essentials | 10–15% of gross pay, including match | Roth |
| About $120K–$200K | One month of essentials | 15% of gross pay, including match | Roth or split; check bracket |

**Adjust for household size and real costs.** Income alone misplaces people. If essential expenses plus minimum debt payments take more than about 70% of take-home pay, use the defaults from the row below their income. A family of five at $65K usually lands on the first row; a single person at $65K usually does not.

**Benefits and credits come from real limits, not the table.** Decide whether to include the Benefits to Check tab by comparing their income, filing status and number of kids with the current year's looked-up limits for each program (step 4). Include it whenever they are likely to qualify for anything.

## 2. Quick answer

Ask for whichever of these five the context file doesn't already have:

- Take-home pay, and how often each earner is paid (weekly, every two weeks, twice a month, monthly, irregular)
- Essential monthly expenses, roughly
- Each debt's balance and interest rate (rough is fine)
- Whether an employer matches retirement contributions, and how
- Cash savings today

From that, give one headline: **"Your next dollar goes to ____, because ____."** Then offer the full plan. Many people will act on the headline alone, so make it specific and correct.

## 3. Full intake (for the full plan)

Ask only for what is still missing, grouped, not one question at a time. If they don't know a number, use a range and mark it as an estimate in the workbook.

- **Household:** one or two earners? For two earners, collect pay, pay frequency and employer plan for each, and whether each debt is joint or belongs to one person.
- **Income:** gross and take-home for each earner, and whether income is steady or irregular. For irregular income, ask for a low month, not an average.
- **Expenses:** essentials, including childcare.
- **Debts:** type, balance, rate, minimum payment, and for promo rates the end date and whether it's a true 0% rate or "no interest if paid in full" (deferred interest); for student loans, federal or private, the repayment plan they're on, when the loans were taken out, whether they're still in school or in a grace period, and whether they're working toward Public Service Loan Forgiveness.
- **Kids:** birth years, and for any born 2025 or later, whether the family has claimed the government's starting deposit in a Trump Account.
- **Employer plans:** match formula, vesting schedule, whether the match is paid per paycheck, HSA eligibility, dependent care FSA.
- **People depending on them:** number and ages of kids or other dependents, and current life and disability insurance (through work or their own).
- **Age** of each earner.
- **Tax filing:** single, married filing jointly, or head of household.
- **Dated goals:** home, kids' college, a wedding, a career change, with target dates.

## 4. Look up current figures before using them

Limits and programs change every year. Search for the current year's values; never state them from memory:

- 401(k)/403(b)/457 limit and catch-up amounts
- IRA limit and Roth IRA income limits (single filers at higher incomes in this range can hit these)
- HSA and dependent care FSA limits
- SEP-IRA and Solo 401(k) limits, if self-employed
- Federal tax brackets, the standard deduction, and the current cap on state and local tax deductions
- Student loan interest deduction income limits (it phases out partway through this audience's range)
- Federal student loan repayment plans available for their loans and dates (the SAVE plan has ended; the Repayment Assistance Plan launched July 1, 2026; other plans are being phased out), which plans count toward Public Service Loan Forgiveness, whether forgiven balances are taxable, and in-school interest rules
- Earned Income Tax Credit, Child Tax Credit, and Saver's Credit or Saver's Match income limits and amounts, by filing status and number of kids
- Trump Account rules: which birth years get the government's starting deposit, how to claim it, and the yearly contribution limit
- Income limits for SNAP, WIC, and Medicaid or CHIP in their state, when they may be close

Every figure goes in the workbook's Limits & Sources tab with the year, the source name and the link. Cite the most useful sources in chat too.

## 5. Check for a shortfall first

If take-home pay does not cover essential expenses plus minimum debt payments, do not build the ladder yet. Build the shortfall plan instead:

1. **Benefits and credits to check.** Using the looked-up limits, list what they may qualify for: Earned Income Tax Credit, Child Tax Credit, Saver's Credit or Saver's Match, the Trump Account starting deposit for kids born 2025 or later, SNAP, WIC, Medicaid or CHIP, utility assistance and childcare subsidies. Say "you may qualify" and link to the official place to check; never promise eligibility.
2. **Lower-cost debt options.** Contacting lenders about hardship plans, and an income-driven federal student loan plan if one is available for their loans.
3. **Nonprofit credit counseling.** Point to an agency affiliated with the National Foundation for Credit Counseling if payments are unmanageable or debt is in collections.
4. **A starter goal that fits.** Even $10–$25 a paycheck toward a small cash cushion, stated as progress, not a failure to hit a bigger number.

Once the numbers cover the basics, move to the ladder.

## 6. Build the ladder

Fund each rung before moving extra money down, unless a note says otherwise. For two-earner households, treat the household as one budget but track each earner's match and accounts separately.

1. **Minimum payments on every debt.** Missing them costs fees, higher rates and credit damage.
2. **Starter emergency fund.** Sized by the starting defaults.
3. **Full employer match, for every earner who has one.** The match is an immediate return no debt payoff beats. Check vesting: if they may leave before vesting, show what that does to its value.
4. **Protection check.** If anyone depends on their income, check for term life and disability coverage. Show the monthly cost as an essential expense, not a savings rung. Skip for people with no dependents unless they ask.
5. **High-interest debt.** Debt above the high-rate threshold on the Assumptions tab (default 8%).
6. **Full emergency fund.** Three months of essentials for steady income; six or more for irregular income, a single earner with dependents, or an unstable job.
7. **Retirement saving beyond the match.** HSA if eligible, then an IRA, then more into the workplace plan, up to the retirement target. State that the target is on gross pay, not take-home, and show both numbers.
8. **Moderate-rate debt (between the two thresholds, default 4–8%).** A judgment call. Show both paths: extra payments earn a guaranteed return equal to the debt's rate; investing earns a higher expected but uncertain return. Splitting is a reasonable middle.
9. **Kids' college and other dated goals.** Say plainly that retirement usually comes first, because students can borrow for school and nobody can borrow for retirement. Once retirement is on track, a 529 plan is the common college account. For kids born 2025 or later, make sure the family has claimed the government's starting deposit in a Trump Account, since it's free money; note that the account is locked until 18 and follows retirement-account rules after that, so a 529 is usually the better place for college savings. Money needed within about five years stays in cash or similar low-risk savings.
10. **Low-rate debt (below the low threshold, default 4%).** Extra payments here mostly buy peace of mind; let the person weigh that.

### Comparing debt and saving fairly

Use each debt's sticker rate by default, since most households in this range take the standard deduction. Ask whether they itemize rather than assuming: the higher cap on state and local tax deductions means more homeowners in high-tax states now do. Lower the rate only when a deduction actually applies: the household itemizes (then mortgage interest counts), or they are under the student loan interest deduction's income limit. Show the adjusted rate next to the sticker rate when you use it.

### Roth or traditional

Most of this audience is in a lower or middle tax bracket, so lean Roth by default, following the starting defaults. Explain the choice in one or two sentences: Roth means paying tax now and withdrawing tax-free later; traditional means a tax break now and paying tax later.

- Under about $120K, or young and early career: Roth, and say so plainly.
- **Exception, starting in 2027:** if their income qualifies for the Saver's Match, it's deposited only into traditional (pre-tax) accounts. Putting at least enough into a traditional account to get the full match can beat Roth. Show both, with the looked-up match amount.
- Higher incomes in this range: look up the bracket. If they are in the higher brackets for this range, traditional or a split is reasonable. Single filers may also be over the Roth IRA income limit; if so, say they can still use a Roth option in a workplace plan if one is offered.

Mention that Roth IRA contributions (not earnings) can be withdrawn without penalty, which gives some backup flexibility.

## 7. Debt payoff method

For rung 5 (and rung 8 if they choose to pay down), compare:

- **Avalanche:** extra money to the highest rate first. Costs the least interest.
- **Snowball:** extra money to the smallest balance first. Costs more, but early wins help some people stick with it.

Show the difference in total interest and payoff date. If the gap is small, say that motivation matters more than the math.

## 8. Special cases

Raise any that apply:

- **Promo rates:** tell the two kinds apart. A true 0% intro rate charges interest only on what's left when the promo ends, so paying minimums and clearing it before the end date is reasonable. A "no interest if paid in full" offer (deferred interest, common on store cards) charges all the interest back to the purchase date if even a dollar is left, so it goes ahead of other high-interest debt as the end date gets close.
- **Federal student loans:** the plans changed in 2026. Check which plan they're on and which plans their loans qualify for. Anyone still in the SAVE plan needs to choose a new plan, or they'll be moved automatically. For someone working toward Public Service Loan Forgiveness, confirm their plan counts; some new plans don't. Income-driven plans and forgiveness can still make fast payoff the wrong move, but forgiven balances outside Public Service Loan Forgiveness may now be taxable, so include that in the comparison. For students still in school, show the interest building up on unsubsidized loans, and suggest paying that interest during school if they can.
- **401(k) loans and early withdrawals:** a last resort. Taxes, penalties and lost growth usually outweigh the benefit.
- **Self-employed or no workplace plan:** no match rung; cover IRA, SEP-IRA or Solo 401(k) options.
- **Irregular or changing income** (students, gig work, commission): plan on a low month; size the emergency fund from that.
- **Dependent care FSA:** if they pay for childcare and have access to one, note it lowers taxable income.

## 9. Build the workbook

Load the xlsx skill before building. Create these tabs:

1. **Start Here** – the headline action, a three-line summary, a "last updated" date, and how to use the workbook. No band names or income labels.
2. **Inputs** – every number the person gave, each earner in its own column. All other tabs read from here; changing an input updates everything.
3. **Assumptions** – expected investment return, inflation, tax bracket per earner, whether they itemize, high-rate and low-rate debt thresholds, emergency fund months, starter fund amount, retirement target. All editable, each with a one-line explanation. Add one neutral line at the top describing what the defaults were set from, e.g. "Defaults set for a household of 4 earning about $85K. Change any number below."
4. **Ladder** – each rung, its status (done, in progress, not started), and the amount going to it per paycheck and per month. Show per-paycheck amounts using the actual number of paychecks a year (52, 26, 24 or 12), not an assumed monthly split.
5. **Debt Payoff** – month-by-month schedule for avalanche and snowball side by side, with total interest and payoff date for each.
6. **What-If** – the retirement projection at the assumed return and at a lower return, with inflation applied, so they can see how sensitive the plan is.
7. **Limits & Sources** – every looked-up figure with year, source name and link.
8. **Monthly Check-in** – one row per month: balances, emergency fund, retirement saved, and progress toward each rung.
9. **Benefits to Check** – when they are likely to qualify for anything, based on looked-up limits: each benefit or credit, why it may apply, and the official link.

Workbook rules:

- No typed-in numbers inside formulas. Every value comes from Inputs, Assumptions or Limits & Sources.
- A balance check on the Ladder tab: total allocated must equal money available. Highlight it red when it doesn't match.
- Estimated inputs are visibly marked.
- Keep it readable on a phone: large text on Start Here, no tiny merged-cell layouts, and the key numbers on the first screen.
- Mention that the file opens in Google Sheets too.

Recalculate and open the finished file to check that formulas work, the balance check passes and nothing shows an error before sending.

## 10. Deliver

In chat:

1. The headline action.
2. A short summary of the ladder with this month's amounts.
3. Two or three specific facts that would change the order (a raise, a promo ending, leaving a job before vesting, a new baby).
4. When to see a professional: running a business, an inheritance or other windfall, complex tax questions, or within about ten years of retiring. Suggest a fee-only fiduciary planner.
5. The workbook, and the sources worth citing.

If the person gave numbers the context file doesn't have, or that differ from it (a new debt, a raise, a paid-off card), offer to update `.agents/money-ops-context.md` so the next skill starts current.

## Rules

- Use their numbers. A ladder with no dollar amounts is not finished.
- Never state limits, income ranges, brackets or loan program details from memory.
- No specific fund, stock or provider picks.
- Never label the person by income group. Describe their plan, not their bracket.
- Present judgment calls (moderate-rate debt, avalanche vs. snowball, Roth vs. traditional at higher incomes) as choices with trade-offs.
- Never imply someone is behind or doing it wrong. State where they are and the next step.

## Related skills

- **money-ops-context** — reads the household's numbers first, and takes back any updates this skill learns
- **retirement-account-order** — once retirement is the next rung, decides which accounts to fill and Roth vs. traditional
- **market-downturn-plan** — protects what's saved and sets rules for a market drop or a job loss
