# Agent Instructions

This file provides instructions for AI coding agents (Codex, OpenCode, etc).

## Project Overview
Next.js 15 dashboard with TypeScript, Tailwind v4, and Supabase.

## Key Files
- `src/app/layout.tsx` - Root layout with theme provider
- `src/app/page.tsx` - Home page
- `src/lib/supabase/client.ts` - Browser Supabase client
- `src/lib/supabase/server.ts` - Server Supabase client
- `src/lib/utils.ts` - Utility functions (cn helper)

## Commands
- `pnpm dev` - Start dev server
- `pnpm build` - Production build
- `pnpm lint` - Run ESLint
- `pnpm type-check` - TypeScript check
- `pnpm test` - Run Playwright tests

## Conventions
- Use `cn()` from `@/lib/utils` for class merging
- Prefer server components (no 'use client' unless needed)
- All database access through Supabase clients
- Tests go in `tests/e2e/`

## Git Rules
- Never push to `main` directly
- Create PRs from feature branches to `staging`
- Include test coverage for new features

## Don't
- Don't modify `package.json` dependencies without asking
- Don't add new npm packages without justification
- Don't skip TypeScript types
- Don't write inline styles (use Tailwind)
