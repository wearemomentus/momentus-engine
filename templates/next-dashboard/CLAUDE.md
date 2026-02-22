# Project Instructions

## Stack
- Next.js 15 (App Router, RSC, Server Actions)
- TypeScript 5.x (strict mode)
- Tailwind CSS v4
- shadcn/ui + Radix UI
- Geist font (Sans + Mono)
- Supabase (database, auth, storage)
- Vercel (hosting)

## Git Workflow
- Never push directly to `main`
- Create feature branches from `staging`
- PR feature branches into `staging`
- PR `staging` into `main` for production releases

## Environment
- Local dev uses Supabase local instance (`supabase start`)
- Staging uses staging Supabase project
- Production uses production Supabase project
- Environment variables are set in Vercel (separate for Preview vs Production)

## Testing
- Write tests before implementation (TDD)
- Playwright for E2E tests in `tests/e2e/`
- Run `pnpm test` before pushing

## Database
- All schema changes via Supabase migrations
- Run `supabase migration new [name]` to create migrations
- Test locally first, then push to staging, then production
- Never modify production database directly

## Code Style
- Functional components with hooks
- Named exports for components
- Colocate related files
- Use `cn()` for conditional classes
- Prefer server components, add 'use client' only when needed
- Handle loading and error states

## File Structure
```
src/
├── app/                    # Routes
├── components/
│   ├── ui/                # shadcn components
│   └── [feature]/         # Feature components
├── lib/
│   ├── supabase/          # DB client
│   └── utils.ts           # Helpers
├── hooks/                 # Custom hooks
├── stores/                # Zustand stores (if needed)
└── types/                 # TypeScript types
```
