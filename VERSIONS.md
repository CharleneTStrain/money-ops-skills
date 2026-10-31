# Versions

## 1.3.0 — October 31, 2026

- New skill, **market-downturn-plan**: sorts savings into three buckets by when the money is needed, checks downturn risks (income loss, concentration, speculation, insurance gaps, fraud), runs drop tests including stocks and bonds falling together, and writes signed "My investment rules," delivered as an Excel workbook
- The other skills link to it in their Related skills

## 1.2.0 — October 31, 2026

- Both retirement skills now account for the Saver's Match, which replaces the Saver's Credit for retirement savings in 2027 and goes only into traditional accounts, so it can change the Roth vs. traditional answer for lower earners
- Student loan guidance updated for 2026: the SAVE plan has ended, the Repayment Assistance Plan launched, some plans don't count toward Public Service Loan Forgiveness, and forgiven balances may be taxable
- **retirement-debt-balance** now separates true 0% promo rates from deferred-interest offers, checks for the Trump Account starting deposit for kids born 2025 or later, and asks whether the household itemizes instead of assuming

## 1.1.1 — October 31, 2026

- **retirement-account-order** now covers the limits of the government 457(b) penalty-free exception (rolled-in money, rollovers out to an IRA), separates nonprofit 457(b)s, adds the 457(b) special catch-up, and applies the 15-year 403(b) catch-up before the age-50 catch-up

## 1.1.0 — October 31, 2026

- New skill, **retirement-account-order**: which retirement accounts to fill first (401(k), 403(b), 457(b), HSA, Roth or traditional IRA), an on-track check that counts pensions and Social Security, a fair Roth vs. traditional comparison, and a start-now calculator, delivered as an Excel workbook
- **money-ops-context** now records pensions and Social Security estimates
- **retirement-debt-balance** and **money-ops-context** link to the new skill

## 1.0.0 — October 31, 2026

First packaged release.

- New foundation skill, **money-ops-context**, that writes `.agents/money-ops-context.md`; every other skill reads it first
- **retirement-debt-balance** moved into `skills/`, now reads the context file and ends with **Related skills**
- Library website at charlenetstrain.github.io/money-ops-skills, published from `site/` to GitHub Pages
- Installs as a Claude Code plugin, through `npx skills`, or by copying folders
- MIT license, contributing guide, skill request form, `validate-skills.sh`, and releases published from a button in Actions

## 0.1.0 — October 31, 2026

First skill, **retirement-debt-balance**, published.
