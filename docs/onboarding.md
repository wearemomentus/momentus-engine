# Onboarding Guide

Welcome to Momentus development. This guide gets you set up quickly.

## Prerequisites

- macOS (Mac Studio or MacBook Pro)
- GitHub account with access to `wearemomentus` org
- Vercel account (team access)
- Supabase account (org access)

## Step 1: Bootstrap Your Machine

Run the bootstrap script to install all required tools:

```bash
curl -fsSL https://raw.githubusercontent.com/wearemomentus/momentus-engine/main/bootstrap.sh | bash
```

This installs:
- Homebrew, Node, pnpm
- GitHub CLI, Vercel CLI, Supabase CLI
- Playwright for testing
- Agent Browser for automation
- Various agent skills

## Step 2: Authenticate CLIs

The bootstrap script prompts for auth, but if you need to do it manually:

```bash
gh auth login           # GitHub
vercel login            # Vercel
supabase login          # Supabase
```

## Step 3: Clone Your Projects

```bash
cd ~/Projects/momentus
gh repo clone wearemomentus/aura
gh repo clone wearemomentus/mml
# etc.
```

## Step 4: Install Claude Code Plugins

In Claude Code terminal:

```
/plugin marketplace add obra/superpowers-marketplace
/plugin install superpowers@superpowers-marketplace
```

## Step 5: Understand the Workflow

Read these docs in order:
1. [workflow.md](workflow.md) - How we work
2. [tool-routing.md](tool-routing.md) - Which tool for which task
3. [naming-conventions.md](naming-conventions.md) - Repo and branch naming

## Project Structure

Local folder structure:

```
~/Projects/
├── momentus/           # Internal products (aura, mml, reshape, prism)
├── clients/            # Client projects by client name
│   ├── elleriley/
│   ├── pitchblack/
│   ├── snap/
│   └── mccann/
├── personal/           # Personal/side projects
├── resources/          # Shared resources, skills
└── workshop/           # Experiments, setup
```

## Key Tools

| Tool | Purpose |
|------|---------|
| Claude Code | CLI agent, scaffolding, git ops |
| Cursor | IDE for day-to-day coding |
| Codex | Background autonomous tasks |
| Agent Browser | Browser automation |
| Rams | Design review |

## Getting Help

- Check the docs in this repo
- Ask in the team Slack
- File issues at https://github.com/wearemomentus/momentus-engine/issues
