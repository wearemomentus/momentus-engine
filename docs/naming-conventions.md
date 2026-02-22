# Naming Conventions

## GitHub Repos (all in `wearemomentus` org)

| Type | Format | Examples |
|------|--------|----------|
| Internal product | `[product-name]` | `aura`, `mml`, `reshape`, `prism` |
| Internal tooling | `momentus-[name]` | `momentus-engine`, `momentus-brand` |
| Client project | `[clientname]-[projectname]` | `snap-creativestrategyos`, `elleriley-reportmcp`, `pitchblack-creativeos` |
| Template repo | `template-[name]` | `template-next-dashboard` |

**Rules:**
- All lowercase
- Hyphens for word separation (no underscores, no camelCase)
- Client name comes first, then project name
- Keep it short but descriptive

## Git Branches

| Branch | Purpose |
|--------|---------|
| `main` | Production. Protected. Auto-deploys to production URL. |
| `staging` | Testing/preview. Auto-deploys to staging URL. |
| `feature/[short-description]` | Feature work. Branch from staging, PR back to staging. |
| `fix/[short-description]` | Bug fixes. Same flow as features. |
| `hotfix/[short-description]` | Urgent production fixes. Branch from main, PR to main AND staging. |

## Vercel Domains

| Environment | Format |
|-------------|--------|
| Production | `[project].wearemomentus.com` |
| Staging | `staging-[project].wearemomentus.com` or `staging-[project].vercel.app` |

## Supabase Projects

| Environment | Format |
|-------------|--------|
| Staging | `[project]-staging` |
| Production | `[project]-production` |
| Local dev | `supabase start` (local instance) |

## Environment Variables

- `.env.local` - local dev (gitignored, points to local Supabase)
- `.env.example` - committed, documents all required vars with placeholder values
- Vercel Preview env vars - staging Supabase credentials
- Vercel Production env vars - production Supabase credentials
