---
name: market-downturn-plan
description: Build a written plan and Excel workbook for protecting savings, retirement accounts and income during market drops and economic uncertainty, for households earning under $200K. Use when someone asks "how do I protect my investments in a downturn," "should I sell before it gets worse," "the market is dropping, what do I do," "is my 401(k) safe," "am I too exposed," "what if I lose my job in a recession," or wants a plan before the next crash.
metadata:
  version: 1.0.1
---

# Market downturn plan

Built for households earning under $200K a year in total (all earners combined, before tax).

The person wants to protect what they've saved, and what they earn, when markets fall or the economy gets shaky. The best protection is a plan written down before the drop: which money is needed soon and kept safe, which money can wait out a decline, what could hurt them besides prices, and exactly what they'll do (and won't do) when the news turns bad. The deliverable is an Excel workbook built from their own numbers, plus their own signed one-page investment rules. The chat reply leads with one thing to do this week.

This is financial education, not financial advice. Never predict where markets are going, never tell someone to buy or sell at a particular time, and never name a specific fund, stock or provider. Describing types of investments (stock funds, bond funds, cash, CDs, Treasury bills) and how they tend to behave is fine. Say once, briefly, that you are not a financial advisor.

Use plain, short words. Define every money term in a few words the first time it appears, for example "allocation (your mix of stocks, bonds and cash)" or "rebalancing (moving money back to your target mix)." Avoid terms like "sequence risk" in anything the person reads; say what it means instead. Stay calm and steady: people often arrive scared. Never shame someone for a past decision, including selling in a previous drop.

## Before you start

If `.agents/money-ops-context.md` exists (or `.claude/money-ops-context.md`), read it first. Use the household, income, expenses, debts, accounts, insurance, emergency fund and goals it already has, confirm anything that looks out of date, and only ask for what's missing. If it doesn't exist, go ahead with what you're given, and suggest running **money-ops-context** once so the next skill doesn't have to ask.

## 1. Check the moment

Ask one question first: is the market dropping right now, or are they planning ahead?

**If it's dropping now and they're worried,** start with the 60-second version, before any questions:

1. "Money you need in the next two years shouldn't be in stocks. If it is, that's the one thing to fix, and we'll do it calmly."
2. "Money you won't touch for five years or more has time to recover. Selling it now turns a drop on paper into a real loss."
3. "Keep your paycheck contributions going, and don't make a big move today. Let's sort your money first."

Then build the plan. If they've already sold, don't judge it; plan from where they are, including how and when they'd get back in, by rule rather than by feel.

**If they're planning ahead,** build the full plan.

If household income is $200K or more, say this guide is built for households under $200K, give the general approach in a few sentences, and suggest a fee-only fiduciary planner.

## 2. Gather the numbers

Ask only for what the context file doesn't have, grouped, not one question at a time. Ranges are fine; mark estimates.

- **Each account:** type (401(k), 403(b), 457(b), IRA, Roth IRA, HSA, taxable brokerage, savings, investing app, crypto), rough balance, and what it holds (a target-date fund, a mix of funds, individual stocks, crypto, options, cash, or "I don't know")
- **Borrowing to invest:** margin, options, or leveraged funds
- **Employer stock:** shares of their own employer in any account or stock plan
- **Emergency fund:** cash on hand and monthly essential expenses
- **Income:** for each earner, how steady it is (salary, hourly, tips, commission, gig), how secure it feels, and whether their industry tends to cut hours or jobs in recessions
- **Living situation:** rent, mortgage, or living with family
- **When the money is needed:** for each goal (a house, college, retirement, a car), the year they'll need it and roughly how much
- **Age and expected retirement year** for each earner; if retired or within 5 years, planned yearly withdrawals, pension, Social Security and when they plan to claim it
- **Insurance:** health, disability (through work or their own), life, home or renters, auto deductibles, and any umbrella policy
- **Debts:** especially variable-rate debt
- **Past behavior:** how they felt and what they did in the last big drop. This shapes the plan more than any formula.

If they don't know what they're invested in, the first action is finding out. Tell them exactly where to look: their plan's website or app, under investments, holdings or portfolio.

## 3. Sort money by when it's needed

This is the core of the plan. Put every dollar in one of three buckets:

1. **Needed within 2 years:** emergency fund, planned big expenses, and, for retirees, the next 1–2 years of withdrawals. Keep it in cash or near-cash (savings, money market funds, CDs, Treasury bills). A market drop shouldn't be able to touch it. Note that money market funds at a brokerage aren't FDIC-insured: they're treated as securities, covered by SIPC only if the brokerage itself fails, and they're still a reasonable place for this money. I bonds don't belong here, since they can't be cashed in their first year.
2. **Needed in 2–5 years:** a house down payment, college starting soon, early retirement years. Match each amount to its date with CDs or Treasuries that mature around when the money is needed. Bond funds can fall when interest rates rise, so they're a weaker fit for money with a fixed date.
3. **Needed in 5+ years:** most retirement savings for anyone not close to retiring. This money can stay invested through a drop, because there's time for markets to recover.

**Make it add up.** The buckets must reconcile to the actual accounts. One account can hold money for two buckets: a retiree's IRA might hold two years of withdrawals in cash and the rest in stock funds. Show which account holds which bucket's money.

**Show after-tax values too.** A dollar in a traditional 401(k) or IRA is worth less than a dollar of cash, because taxes come out when it's withdrawn. Show the estimated after-tax value next to each balance, using the tax rate on the Assumptions tab.

Show the dollar amount in each bucket today, what it should hold, and the gap. If short-term money is sitting in stocks or crypto, that's the biggest risk in the plan; flag it first.

## 4. How much risk can they afford, and how much can they stomach?

Two separate questions, shown side by side:

- **What they can afford to lose:** how long until they need the money, how steady their income is, and how big their cash cushion is. A 25-year-old with steady income and a year of cash can afford a deep drop; a 64-year-old about to retire cannot afford much.
- **What they can stomach:** how they reacted last time, and how the drop test in step 8 feels.

The plan follows whichever is lower. If they can afford risk but can't stomach it, use a calmer mix they'll actually hold, and show what it costs in expected growth. If they can stomach risk they can't afford, the timeline wins; say so plainly.

## 5. Look up current figures before using them

Rules, limits, rates and history change. Search for current values; never state them from memory:

- FDIC limits for bank deposits and NCUA limits for credit unions, and how coverage works across account types
- SIPC coverage for brokerage accounts, and what it does and doesn't cover (a broker failing, not market losses)
- State insurance guaranty association limits for annuities and life insurance in their state
- Current yields on savings, CDs and Treasury bills, as ranges, without naming providers
- Current rules for TIPS and I bonds (inflation-protected bonds from the U.S. government): purchase limits (I bonds are bought online only), how long I bonds must be held before cashing, and the interest given up if cashed early
- A published, sourced history of past stock market declines and how long recoveries took
- A published, sourced history of a year when stocks and bonds fell together, such as 2022
- A published, sourced study on the cost of missing the market's best days
- Wash-sale rules, including purchases in IRAs and automatic reinvestment, and the capital loss deduction limit
- Roth conversion rules, income-based Medicare premium surcharges, and current marketplace health subsidy rules, including whether an income cliff applies this year (in 2026, going even $1 over 400% of the federal poverty line ends the subsidy) and whether Congress has changed it
- Required minimum distribution rules and the current starting age
- The "rule of 55" for workplace plans, and 401(k) hardship withdrawal and loan rules
- Unemployment benefit basics for their state, health coverage options after a job loss (COBRA and marketplace plans), and the current federal tax treatment of tips (including the tips deduction for 2025 through 2028, its limit and income phaseout) if they earn tips
- Current regulator warnings about investment scams (SEC, FINRA, their state securities regulator)

Every figure goes in the workbook's Limits & Sources tab with the year, the source name and the link. Cite the most useful sources in chat.

## 6. Check what could go wrong

Work through each risk with their numbers. Flag the ones that apply, most serious first.

**Market and money risks**
- **Short-term money in stocks or crypto.** Anything needed within 2 years.
- **Too little cash for a job loss.** An emergency fund below 3 months, or below 6 months for irregular income, tips, a single earner with dependents, or an industry that cuts in recessions. In a downturn, losing income is often a bigger risk than falling prices, and it's what forces people to sell at the bottom. Hand off to **retirement-debt-balance** if the emergency fund needs building.
- **Too much in one company.** Any single stock, especially their employer's, above about 10% of their investments. If the company struggles, they could lose their job and their savings at once.
- **Speculation.** Crypto, single-stock bets, options and leveraged funds can fall much further than the market. Show what a 50% to 80% drop would mean in dollars. Keep speculative money to an amount they could lose without changing their life.
- **Borrowing to invest.** Margin and leveraged positions can force a sale at the worst moment. Flag any of it as a top risk.
- **A mix that doesn't match their timeline.** Compare their current stock-bond-cash mix with what their buckets need. If they hold a target-date fund, check that its year matches when they actually plan to retire, and explain that it already shifts toward bonds over time.
- **Inflation.** Cash and bonds lose buying power when prices rise. Note how much of their long-term money sits in cash, and where TIPS or I bonds could help for money needed in more than a year.
- **Variable-rate debt.** Payments can rise when rates move.
- **Deposits over the insurance limit** at one institution.
- **High fees.** Fees take the same cut in down years as up years.

**Protection beyond markets**
- **Disability.** For working people, an illness or injury that stops their paycheck is a likelier threat than a market crash. Check whether they have disability coverage and roughly how much of their pay it replaces.
- **Other insurance.** Life insurance if anyone depends on their income; home or renters and auto, with deductibles their emergency fund can cover; an umbrella policy if they have significant savings or a home.
- **Insurance products pitched as safe.** Annuities and cash-value life insurance aren't FDIC-insured; they're backed by the insurance company and, up to a limit, the state guaranty association. Some can make sense for some retirees. Explain what's being sold, its fees and surrender charges, and check the seller on FINRA BrokerCheck or the SEC's adviser search before anything is signed.
- **Fraud and account security.** Downturns bring scams and account takeovers. Check for two-factor login on every financial account, a credit freeze with the three credit bureaus, and anything promising high returns with no risk, which is a warning sign.
- **Beneficiaries and access.** Check beneficiaries on every retirement account and insurance policy, and whether a spouse or trusted person would know where everything is. Build the "who to call" sheet in step 10.

## 7. Write the downturn rules

Turn the plan into rules they decide now, while calm. Use their numbers in every rule.

**Keep doing**
- **Keep contributing.** Regular paycheck contributions buy more shares when prices are low. Stopping the employer match to "wait it out" gives up free money.
- **Rebalance on a rule, not a feeling.** Set a target mix and a trigger: once a year, or whenever any part drifts more than 5 percentage points from target. In a drop, rebalancing means moving some money from bonds or cash back into stocks: buying low, by rule. Show the exact dollar amounts it would move today.
- **Live from the safe bucket.** Retirees and anyone who loses income draw from bucket 1, not by selling stock funds that are down.
- **Check less often.** Pick a schedule for looking at balances (monthly or quarterly) and stick to it during a drop.

**Don't do**
- **Don't sell everything to "wait for things to settle."** Show the looked-up data on how much of the market's gains come from a handful of days, which often land right after the worst ones. The hard part is knowing when to get back in.
- **Don't stop retirement contributions** unless cash is short for essentials.
- **Don't pull from retirement accounts early** except as a last resort; show the taxes and penalties with their numbers.
- **Don't "buy the dip" with money from bucket 1 or 2,** like rent or a down payment.
- **Don't sign anything pitched during a scare** until the product is explained and the seller is checked.

**Optional moves, only if they fit**
- **Tax-loss harvesting** in a taxable brokerage account: selling a fund at a loss and buying a similar but not identical one, to lower taxes. Explain the wash-sale rule fully: buying the same fund within the window in any account, including an IRA, or through automatic dividend reinvestment or 401(k) contributions, can cancel the loss. A loss canceled by an IRA purchase is gone for good. Turn off automatic reinvestment in the taxable account first.
- **Roth conversions** while balances are down: moving money from a traditional account to a Roth means paying tax on a smaller amount. Show the tax cost with their numbers, plus the side effects: higher income can raise Medicare premiums two years later, and for early retirees on a marketplace health plan it can reduce the subsidy or, past an income cliff, end it entirely. Check the conversion amount against the looked-up cliff before suggesting it. Suggest a tax professional before doing it.
- **Raising cash ahead of a known need** (a house purchase next year) is planning, not market timing. Do it on the bucket schedule, not in reaction to headlines.

## 8. Run the drop test

Show, in dollars, what happens in four illustrations, each with stated assumptions:

1. Stocks fall 20%; bonds and cash hold steady
2. Stocks fall 35%; bonds and cash hold steady
3. Stocks fall 50%; bonds and cash hold steady
4. Stocks and bonds fall together, as in 2022, using the looked-up figures from that year

Add an inflation view: what their cash and bonds would buy after several years of high inflation, using a stated rate.

For each, show:
- The dollar decline in each bucket, and its after-tax value
- Whether bucket 1 is untouched (it should be)
- How many months of essential expenses their cash covers if they also lost their income
- For retirees, how many years of withdrawals can come from cash and CDs before touching stocks

Use looked-up history to show these drops have happened and how long recoveries took, without predicting the next one.

Then ask how the 35% number feels. If the answer is "I'd sell," that's real information: go back to step 4 and use a calmer mix they'll hold.

## 9. Situations that change the plan

Cover whichever apply.

**Retired or within 5 years of retiring**
- **Refill rule for the cash bucket:** top it back up from stocks only in years when stocks are up, or at or above the level of the last refill; in down years, live from cash and bonds and leave stocks alone.
- **Flexible spending:** set a simple guardrail now, such as trimming withdrawals by 10% in any year the portfolio is down more than a set amount. A small cut in bad years protects the plan more than almost anything else.
- **Social Security timing:** delaying a claim raises the monthly benefit for life and can be a lever; covering early years from savings so the claim can wait is one approach. Refer the claiming decision itself to a professional.
- **Required withdrawals:** if they're old enough for required minimum distributions, plan which holdings to withdraw from in a down year: cash or bonds first, or move shares in kind to a taxable account rather than selling, where the provider allows it. The tax bill is the same either way; moving shares just avoids selling low. Pay the tax from money outside the IRA if they can.
- **Marketplace health coverage before 65:** retirees buying their own coverage should check every withdrawal and conversion against the looked-up subsidy income cliff.

**Early in their career or without a workplace plan**
- **Income is the real risk.** Tipped, hourly and gig work often shrink first in a recession. Build cash first: a high-yield savings account sized to a low month, not an average one.
- **Living with family or with low bills is a window.** Show how fast their emergency fund and savings could grow at current expenses.
- **Report every tip.** Reported tips count as earned income for a Roth IRA, build future Social Security and unemployment benefits, and, through 2028, qualify for a federal income tax deduction (look up the current limit). Unreported cash tips get none of that.
- **A Roth IRA fits tip income well.** With the tips deduction lowering their taxable income, paying tax now and taking money out tax-free later is usually the better deal. Show what a small amount per shift adds up to.
- **For someone decades from retirement, a downturn is a long sale.** Regular contributions during a drop buy more for the same money.
- **Speculative holdings get a size limit,** set in dollars they could lose without missing rent.

**A job loss during the downturn**
- File for unemployment right away; give their state's starting point.
- Health coverage: compare COBRA with a marketplace plan; losing a job usually opens a special enrollment window. Marketplace subsidies depend on the year's total income, and unemployment pay, severance and retirement withdrawals all count. Check the estimate against the looked-up subsidy cliff before taking any withdrawal.
- Keep the old 401(k) where it is or roll it into an IRA; never cash it out by default. Explain the rule of 55 for anyone leaving a job in or after the year they turn 55, from current rules.
- Order of money to use: emergency fund, then cutting expenses, then taxable investments, with retirement accounts last.
- Hand off to **retirement-debt-balance** to re-sort priorities on lower income.

## 10. Build the workbook

Load the xlsx skill before building. Create these tabs:

1. **Start Here** – the one action for this week, the 60-second version, the three-bucket summary, a "last updated" date, and how to use the workbook.
2. **Inputs** – every account, balance, holding type, income type, insurance policy and goal date. All other tabs read from here.
3. **Assumptions** – target mix per bucket, rebalance trigger, drop-test assumptions for each scenario, inflation rate, tax rate for after-tax values, essential monthly expenses, speculation limit, spending guardrail. All editable, each with a one-line explanation.
4. **Buckets** – money needed within 2 years, 2–5 years and 5+ years: which account holds it, what's there now, what it should hold, the gap, and after-tax values. Must add up to the account totals.
5. **Current vs Target** – today's mix next to the target, with the dollar moves needed to rebalance.
6. **Drop Test** – the four scenarios plus the inflation view, in dollars, months of expenses covered, and years of withdrawals covered.
7. **Risk Check** – each risk from step 6, flagged or clear, with the fix.
8. **My Rules** – their investment rules from step 7 and step 9, in their words, with dollar amounts, a signature line and the date, ready to print.
9. **Who to Call** – each account and policy with the institution, its type, the beneficiary on file, and where to find login and contact details (never the passwords or account numbers themselves).
10. **Limits & Sources** – every looked-up figure with year, source name and link.
11. **Check-in** – one row per trigger, written as an alert: "The market fell 10%: open My Rules." Triggers: a 10% or bigger market drop, a 5-point drift from target, once a year, a job change or loss, a goal date getting within 2 years, retirement, turning the age for required withdrawals.

Workbook rules:

- No typed-in numbers inside formulas. Every value comes from Inputs, Assumptions or Limits & Sources.
- Flag in red: money needed within 2 years in stocks or crypto, any borrowing to invest, speculative holdings above the set limit, a single company above the concentration threshold, cash above the insurance limit at one institution, an emergency fund below target, missing disability coverage for a working earner, a missing beneficiary, a mix drifted past the rebalance trigger, or buckets that don't reconcile to account totals.
- Never store passwords, full account numbers or Social Security numbers anywhere in the workbook.
- Estimated inputs are visibly marked.
- Readable on a phone: large text on Start Here, key numbers on the first screen.
- Mention that the file opens in Google Sheets too.

Recalculate and open the finished file to check that formulas work, the buckets reconcile, and nothing shows an error before sending.

## 11. Write their investment rules

Alongside the workbook, write a one-page plan in the person's own voice, meant to be reread during a drop. Call it "My investment rules." Keep it under a page:

- The 60-second version, in their words
- What each bucket is for, and that bucket 1 is safe
- Their target mix, their rebalance trigger, and how often they'll check balances
- The things they will keep doing and the things they won't do
- For retirees, the refill rule and spending guardrail
- The one number that matters most to them (for example, "My cash covers 7 months of bills")
- A signature line and the date written

## 12. Deliver

In chat:

1. **One action for this week,** specific enough to do in fifteen minutes: "Log into your 401(k) and write down what it's invested in," "Move next year's house money from your brokerage account to savings," or "Check the beneficiary on your 401(k)."
2. The three buckets with today's dollars and any gap.
3. The top one or two risks, with the fix.
4. The drop test in one line: "If stocks fell 35%, your savings would drop about $X, your cash would still cover Y months, and you wouldn't need to sell anything."
5. Their rules, short.
6. When to bring in a professional, for the specific decision only: large Roth conversions, concentrated employer stock with tax consequences, Social Security claiming, retirement income planning, or annuity and insurance products someone is pitching. Suggest a fee-only fiduciary planner.
7. The workbook, their investment rules, and the sources worth citing.

If the person gave numbers the context file doesn't have, offer to update `.agents/money-ops-context.md`.

## Rules

- Never predict the market, name a bottom, or say when to get in or out.
- No specific fund, stock or provider picks. Describing investment types and how they behave is fine.
- Use their numbers. A plan without dollar amounts per bucket is not finished.
- Never state insurance limits, tax rules, historical returns, rates or yields from memory; look them up and cite them.
- Label every scenario as an illustration with stated assumptions, not a forecast.
- The plan follows the lower of what they can afford to lose and what they can stomach.
- Never store passwords, account numbers or Social Security numbers.
- Never shame past decisions. State where they are and the next step.

## Related skills

- **money-ops-context** — reads the household's numbers first, and takes back any updates
- **retirement-debt-balance** — builds the emergency fund and re-sorts priorities if income drops
- **retirement-account-order** — decides which retirement accounts to fill once the downturn plan is in place
