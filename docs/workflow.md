# Momentus Development Workflow

## Project Lifecycle

### 1. Plan (Claude.ai)
- Define requirements, PRD, architecture
- Use Shaping Skills methodology for complex features
- Output: clear spec document

### 2. Scaffold (Claude Code + Superpowers)
- Create repo from momentus-engine template
- Set up Vercel project with staging/production domains
- Create two Supabase projects (staging + production)
- Configure environment variables in Vercel (separate for Preview vs Production)
- Set up GitHub branch protection on `main`

### 3. Build (Superpowers workflow)
- `/superpowers:brainstorm` - refine the design interactively
- `/superpowers:write-plan` - create detailed implementation plan
- `/superpowers:execute-plan` - subagent-driven development with TDD
- Work happens in git worktrees (isolated branches)

### 4. Test (Agent Browser + Playwright)
- Automated smoke tests run on every PR via GitHub Actions
- Agent Browser for manual verification on staging
- Rams for design quality review

### 5. Ship (Git + Vercel)
- PR from feature branch to `staging` - auto-deploys to staging URL
- Verify on staging
- PR from `staging` to `main` - auto-deploys to production
- Branch protection ensures review before production

### 6. Maintain (Codex background tasks)
- Bug fixes via Codex (creates PRs automatically)
- Test suite expansion
- Documentation updates

## Git Branching Model

```
feature/xyz --> staging --> main
                  |           |
            staging URL   production URL
```

- `main` = production. Protected. No direct pushes.
- `staging` = preview/testing. Auto-deploys to staging URL.
- `feature/*` = individual work. Branch off staging, PR back to staging.

## Tool Routing

| Task | Tool | Why |
|------|------|-----|
| Planning, PRDs, strategy | Claude.ai | Conversational, iterative |
| Architecture, scaffolding | Claude Code + Superpowers | CLI access, git, file creation |
| Day-to-day coding | Cursor | IDE context, inline edits |
| Bug fixes, tests, cleanup | Codex (via Cursor) | Background autonomous tasks |
| Browser testing, form fill, data entry | Agent Browser / Browser Use | CLI-driven browser automation |
| Design review | Rams | Automated accessibility + design checks |
| Design system generation | UI/UX Pro Max | Style, color, typography recommendations |

## Multi-Machine Workflow

GitHub is the source of truth. On any machine:

1. `git pull` to get latest
2. Work on your branch
3. `git push` when done
4. Switch machines, `git pull`, continue

Never sync project files via iCloud/Dropbox. Git handles everything.
