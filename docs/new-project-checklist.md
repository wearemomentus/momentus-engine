# New Project Checklist

## 1. Create repo from template

```bash
# For internal projects:
gh repo create wearemomentus/[project-name] --template wearemomentus/template-next-dashboard --private --clone

# For client projects:
gh repo create wearemomentus/[clientname]-[projectname] --template wearemomentus/template-next-dashboard --private --clone

cd [project-name]
```

## 2. Set up Vercel

```bash
vercel link
vercel env add NEXT_PUBLIC_SUPABASE_URL        # For Preview (staging)
vercel env add NEXT_PUBLIC_SUPABASE_ANON_KEY   # For Preview (staging)
vercel env add NEXT_PUBLIC_SUPABASE_URL        # For Production
vercel env add NEXT_PUBLIC_SUPABASE_ANON_KEY   # For Production
```

Assign custom domains in Vercel dashboard:
- Production: `[project].wearemomentus.com`
- Staging: `staging-[project].wearemomentus.com` (assign to `staging` branch)

## 3. Set up Supabase

```bash
# Create staging project
supabase projects create [project-name]-staging --org-id [org-id] --region ap-southeast-2

# Create production project
supabase projects create [project-name]-production --org-id [org-id] --region ap-southeast-2

# Link local to staging (default dev target)
supabase link --project-ref [staging-project-ref]
```

## 4. Set up branches

```bash
git checkout -b staging
git push -u origin staging
```

## 5. Configure branch protection

In GitHub repo settings > Branches > Add rule for `main`:
- Require pull request before merging
- Require status checks to pass (ci)

Or via CLI:
```bash
gh api repos/wearemomentus/[repo]/branches/main/protection \
  --method PUT \
  --field required_pull_request_reviews='{"required_approving_review_count":1}' \
  --field enforce_admins=false \
  --field required_status_checks=null \
  --field restrictions=null
```

## 6. Install project dependencies

```bash
pnpm install
```

## 7. Verify

```bash
pnpm dev          # Should run locally
pnpm build        # Should build clean
pnpm test         # Should pass
```

## 8. Update repos inventory

Add the new project to `docs/repos-inventory.md` in momentus-engine.
