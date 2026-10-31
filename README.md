# Money Ops Skills for AI Agents

Open-source skills for everyday household money decisions: where your next dollar should go between retirement, debt, an emergency fund, and the goals that matter to you. Built for households earning under $200K a year. Works with Claude Code, the Claude app, OpenAI Codex, Cursor, and any agent that supports the [Agent Skills spec](https://agentskills.io).

**Browse every skill at [charlenetstrain.github.io/money-ops-skills](https://charlenetstrain.github.io/money-ops-skills/).**

Built by [Charlene Strain](https://www.linkedin.com/in/charlene-strain). Sibling libraries: [Product Ops Skills](https://github.com/CharleneTStrain/product-ops-skills) and [Product Marketing Ops Skills](https://github.com/CharleneTStrain/product-marketing-ops-skills).

**Contributions welcome.** Have a better way to run one of these, or a skill to add? [Open a PR](#contributing) or [request a skill](https://github.com/CharleneTStrain/money-ops-skills/issues/new?template=skill-request.yml).

> These skills offer financial education, not financial advice. They lay out the trade-offs and the math so you can decide. For a business, a large windfall, complex taxes, or being close to retirement, talk to a fee-only fiduciary planner.

## Contents

- [What are skills?](#what-are-skills)
- [How the skills work together](#how-the-skills-work-together)
- [The rules every skill follows](#the-rules-every-skill-follows)
- [All skills](#all-skills)
- [Install](#install)
- [Use](#use)
- [Contributing](#contributing)

## What are skills?

A skill is a markdown file of instructions an AI agent follows for one specific job. Add these to your setup, and when you ask "should I pay off my credit card or put more in my 401(k)?", the agent recognizes the job and works through it the same careful way every time.

## How the skills work together

Everything starts with **money-ops-context**. Run it once and it writes `.agents/money-ops-context.md`: who's in your household, what you earn and how often you're paid, your essential expenses, debts, accounts, employer benefits, insurance, and goals. Every other skill reads that file first, so it only asks you for what's specific to the question. It never stores account numbers, Social Security numbers, or passwords.

```
          ┌──────────────────────────────────────┐
          │           money-ops-context          │
          │    (read by every other skill first) │
          └───────────────────┬──────────────────┘
                              │
                              ▼
                ┌───────────────────────────┐
                │      Saving and debt      │
                ├───────────────────────────┤
                │  retirement-debt-balance  │
                │  retirement-account-order │
                └───────────────────────────┘
```

Skills hand off to each other. The chain that comes up most:

- **Retirement and debt balance → Retirement account order:** decide whether retirement is the next step, then decide which accounts to fill

Each skill ends with a **Related skills** section naming what it hands off to and why.

## The rules every skill follows

- **Your numbers, not averages.** Every answer is built from your own figures.
- **Current limits, looked up and cited.** Contribution limits, credits, and loan rules change every year, so skills look them up instead of guessing.
- **Education, not advice.** No fund, stock, or provider picks. Skills lay out the choices. You decide.
- **No judgment.** Skills describe where you are and the next step, never that you're behind.

## All skills

### Start here

| Skill | What it does |
|---|---|
| [Money ops context](skills/money-ops-context/) | Writes down your household, income, expenses, debts, accounts, benefits, and goals once, so every other skill can read it |

### Saving and debt

Deciding where each dollar goes when everything feels urgent.

| Skill | What it does | Output |
|---|---|---|
| [Retirement and debt balance](skills/retirement-debt-balance/) | Builds a priority ladder for retirement saving, debt payoff, an emergency fund, kids' college, and other goals | Excel workbook: ladder, per-paycheck amounts, payoff schedule, assumptions, monthly check-in |
| [Retirement account order](skills/retirement-account-order/) | Puts your 401(k), 403(b), 457(b), HSA and IRA in order, compares Roth and traditional, and checks whether you're on track | Excel workbook: account order per paycheck, Roth vs. traditional, on-track check, start-now calculator |

More skills coming.

## Install

### Option 1: CLI (recommended)

Use [`npx skills`](https://github.com/vercel-labs/skills) to install into whichever agents you have:

```bash
# Install all skills
npx skills add CharleneTStrain/money-ops-skills

# Install specific skills
npx skills add CharleneTStrain/money-ops-skills --skill money-ops-context retirement-account-order

# See what's available
npx skills add CharleneTStrain/money-ops-skills --list
```

If you run it from inside a Claude Code session, name the agent so the skills land where Claude Code reads them:

```bash
npx skills add CharleneTStrain/money-ops-skills -a claude-code
```

### Option 2: Claude Code plugin

```
/plugin marketplace add CharleneTStrain/money-ops-skills
/plugin install money-ops-skills
```

Outside an interactive session, use the CLI version:

```bash
claude plugin marketplace add CharleneTStrain/money-ops-skills
claude plugin install money-ops-skills@money-ops-skills
```

### Option 3: Clone and copy

```bash
git clone https://github.com/CharleneTStrain/money-ops-skills.git
cp -r money-ops-skills/skills/* ~/.claude/skills/
```

Use `~/.claude/skills/` for every project, or `.claude/skills/` inside one project.

### Option 4: Claude app

Zip any skill folder from `skills/` and upload it under **Customize → Skills → Upload a skill**. Upload **money-ops-context** too, so the others have something to read.

### Option 5: Fork it

Fork the repo, change the skills to match your household or the people you help, and install from your fork.

## Use

Once installed, ask in plain words:

```
"Set up my money context from this pay stub and budget"
→ money-ops-context

"I have $400 extra a month. Credit card or 401(k)?"
→ retirement-debt-balance

"We just had our third kid. Should we start a college fund or keep paying down the car?"
→ retirement-debt-balance

"I'm 26, a teacher with a pension. Should I open a Roth IRA too?"
→ retirement-account-order

"I'm 54 and 10 years from retiring. Am I on track?"
→ retirement-account-order
```

Or call one directly:

```
/money-ops-context
/retirement-debt-balance
/retirement-account-order
```

## Contributing

Found a better way to run one of these, or have a skill to add? PRs and issues are welcome. See [CONTRIBUTING.md](CONTRIBUTING.md), and run `./validate-skills.sh` before you open a PR.

## License

[MIT](LICENSE). Use these however you want.
