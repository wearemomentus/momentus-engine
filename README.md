# Momentus Development Engine

Shared skills, project templates, tooling, and workflow documentation for Momentus Group / TMMC.

## Quick Start

### Bootstrap a New Machine

```bash
curl -fsSL https://raw.githubusercontent.com/wearemomentus/momentus-engine/main/bootstrap.sh | bash
```

Or clone and run locally:

```bash
git clone https://github.com/wearemomentus/momentus-engine.git
cd momentus-engine
./bootstrap.sh
```

### Start a New Project

```bash
# Internal project
gh repo create wearemomentus/[project-name] --template wearemomentus/template-next-dashboard --private --clone

# Client project
gh repo create wearemomentus/[clientname]-[projectname] --template wearemomentus/template-next-dashboard --private --clone
```

See [docs/new-project-checklist.md](docs/new-project-checklist.md) for full setup steps.

## Structure

```
momentus-engine/
├── bootstrap.sh          # Machine setup script
├── skills/               # Shared agent skills
├── templates/            # Project scaffolding
│   └── next-dashboard/   # Standard dashboard starter
├── configs/              # Shared configurations
└── docs/                 # Workflow documentation
```

## Documentation

- [Workflow Guide](docs/workflow.md) - How we work
- [Tool Routing](docs/tool-routing.md) - When to use which tool
- [New Project Checklist](docs/new-project-checklist.md) - Spinning up projects
- [Naming Conventions](docs/naming-conventions.md) - Repo and branch naming
- [Repos Inventory](docs/repos-inventory.md) - All repos and their status

## Stack

- **Framework**: Next.js 15 (App Router)
- **Language**: TypeScript (strict)
- **Styling**: Tailwind CSS v4
- **Components**: shadcn/ui + Radix UI
- **Database**: Supabase (Postgres + Auth + Storage)
- **Deploy**: Vercel
- **Design**: Vercel Geist (light + dark mode)
