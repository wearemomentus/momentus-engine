# Tool Routing Guide

When to use which tool for maximum efficiency.

## Planning & Strategy

| Task | Tool | Command/Action |
|------|------|----------------|
| PRD writing | Claude.ai | Conversational drafting |
| Architecture decisions | Claude.ai | Discuss tradeoffs |
| Feature brainstorming | Claude Code | `/superpowers:brainstorm` |
| Implementation planning | Claude Code | `/superpowers:write-plan` |

## Code Development

| Task | Tool | Command/Action |
|------|------|----------------|
| New project scaffold | Claude Code | `gh repo create --template` |
| Feature implementation | Cursor | Inline edits with Composer |
| Complex multi-file changes | Claude Code | `/superpowers:execute-plan` |
| Quick bug fixes | Cursor | Tab completion |
| Background tasks | Codex | Via Cursor background agent |

## Database & Backend

| Task | Tool | Command/Action |
|------|------|----------------|
| Schema design | Claude Code | `supabase migration new` |
| Query data | Claude Code MCP | Supabase MCP queries |
| Push migrations | Claude Code | `supabase db push` |
| Generate types | Claude Code | `supabase gen types typescript` |

## Deployment & Git

| Task | Tool | Command/Action |
|------|------|----------------|
| Create branch | Claude Code | `git checkout -b` |
| Commit changes | Claude Code | `git commit` |
| Create PR | Claude Code | `gh pr create` |
| Deploy preview | Automatic | Push to any branch |
| Deploy production | Claude Code | Merge PR to main |
| Check deployment | Claude Code | `vercel ls` |

## Testing & QA

| Task | Tool | Command/Action |
|------|------|----------------|
| Run unit tests | Claude Code | `pnpm test` |
| E2E tests | Claude Code | `pnpm test:e2e` |
| Visual testing | Agent Browser | `agent-browser snapshot` |
| Form testing | Agent Browser | `agent-browser fill` |
| Design review | Rams | `rams review` |
| Screenshot comparison | Agent Browser | `agent-browser screenshot` |

## Browser Automation

| Task | Tool | Command/Action |
|------|------|----------------|
| Open page | Agent Browser | `agent-browser open <url>` |
| Click element | Agent Browser | `agent-browser click @ref` |
| Fill form | Agent Browser | `agent-browser fill @ref "text"` |
| Take screenshot | Agent Browser | `agent-browser screenshot` |
| Get page elements | Agent Browser | `agent-browser snapshot -i` |
| Close browser | Agent Browser | `agent-browser close` |

## GitHub Operations

| Task | Tool | Command/Action |
|------|------|----------------|
| Create repo | Claude Code | `gh repo create` |
| List repos | Claude Code | `gh repo list` |
| Create issue | Claude Code | `gh issue create` |
| View PR | Claude Code | `gh pr view` |
| Merge PR | Claude Code | `gh pr merge` |

## Supabase Operations

| Task | Tool | Command/Action |
|------|------|----------------|
| Create project | Claude Code | `supabase projects create` |
| Link project | Claude Code | `supabase link` |
| Start local | Claude Code | `supabase start` |
| Create migration | Claude Code | `supabase migration new` |
| Push to remote | Claude Code | `supabase db push` |
| Generate types | Claude Code | `supabase gen types typescript` |

## Vercel Operations

| Task | Tool | Command/Action |
|------|------|----------------|
| Link project | Claude Code | `vercel link` |
| Add env var | Claude Code | `vercel env add` |
| List deployments | Claude Code | `vercel ls` |
| Deploy production | Claude Code | `vercel --prod` |
| View logs | Claude Code | `vercel logs` |
