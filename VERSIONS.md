# Versions

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
