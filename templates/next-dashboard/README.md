# Momentus Dashboard Template

Next.js 15 dashboard starter with TypeScript, Tailwind v4, and Supabase.

## Quick Start

```bash
pnpm install
pnpm dev
```

Open [http://localhost:3000](http://localhost:3000).

## Stack

- **Framework**: Next.js 15 (App Router)
- **Language**: TypeScript (strict)
- **Styling**: Tailwind CSS v4
- **Database**: Supabase
- **Fonts**: Geist Sans + Geist Mono
- **Theme**: next-themes (light/dark/system)

## Development

```bash
# Start dev server
pnpm dev

# Type check
pnpm type-check

# Lint
pnpm lint

# Build
pnpm build

# Run tests
pnpm test
```

## Supabase

```bash
# Start local Supabase
supabase start

# Create migration
supabase migration new my_migration

# Push to remote
supabase db push

# Generate types
supabase gen types typescript --local > src/types/database.ts
```

## Deployment

Push to GitHub. Vercel handles deployment automatically.

- `staging` branch → staging URL
- `main` branch → production URL
