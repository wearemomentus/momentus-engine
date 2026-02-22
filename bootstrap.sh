#!/bin/bash
set -e

echo "=== Momentus Development Engine Bootstrap ==="
echo ""

# Check OS
if [[ "$OSTYPE" == "darwin"* ]]; then
    echo "Detected macOS"
else
    echo "This script is designed for macOS. Exiting."
    exit 1
fi

# 1. Install Homebrew if missing
if ! command -v brew &> /dev/null; then
    echo "Installing Homebrew..."
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

# 2. Install core tools
echo "Installing core tools..."
brew install gh node pnpm vercel-cli

# Install Supabase CLI
brew install supabase/tap/supabase

# 3. Install Node global packages
echo "Installing global Node packages..."
pnpm add -g typescript tsx playwright agent-browser

# 4. Install Playwright browsers
echo "Installing Playwright browsers..."
npx playwright install --with-deps chromium

# 5. Install browser-use (Python)
echo "Installing browser-use..."
pip3 install browser-use --break-system-packages 2>/dev/null || pip install browser-use --break-system-packages 2>/dev/null || echo "browser-use install skipped - install Python 3 first"

# 6. Install Rams design reviewer
echo "Installing Rams..."
curl -fsSL rams.ai/install | bash || echo "Rams install skipped"

# 7. Install agent skills
echo "Installing agent skills..."
npx skills add https://github.com/vercel-labs/agent-skills --skill vercel-react-best-practices -g -y 2>/dev/null || true
npx skills add https://github.com/vercel-labs/agent-skills --skill web-design-guidelines -g -y 2>/dev/null || true
npx skills add https://github.com/vercel-labs/agent-browser --skill agent-browser -g -y 2>/dev/null || true
npx skills add https://github.com/browser-use/browser-use --skill browser-use -g -y 2>/dev/null || true
npx skills add https://github.com/supabase/agent-skills --skill supabase-postgres-best-practices -g -y 2>/dev/null || true
npx skills add https://github.com/vercel-labs/skills --skill find-skills -g -y 2>/dev/null || true
npx skills add https://github.com/remotion-dev/skills --skill remotion-best-practices -g -y 2>/dev/null || true
npx skills add https://github.com/nextlevelbuilder/ui-ux-pro-max-skill --skill ui-ux-pro-max -g -y 2>/dev/null || true

# 8. Authenticate CLIs (interactive - only needed once per machine)
echo ""
echo "=== Authentication ==="
echo "The following will prompt you to authenticate. Skip any you've already set up."
echo ""

if ! gh auth status &> /dev/null; then
    echo "Authenticating GitHub CLI..."
    gh auth login
fi

if ! vercel whoami &> /dev/null 2>&1; then
    echo "Authenticating Vercel CLI..."
    vercel login
fi

if ! supabase projects list &> /dev/null 2>&1; then
    echo "Authenticating Supabase CLI..."
    supabase login
fi

# 9. SSH key for GitHub
if [ ! -f ~/.ssh/id_ed25519 ]; then
    echo "Generating SSH key for GitHub..."
    ssh-keygen -t ed25519 -C "jenko@momentus" -N ""
    gh ssh-key add ~/.ssh/id_ed25519.pub --title "$(hostname)"
    echo "SSH key added to GitHub."
fi

# 10. Git config
echo "Configuring git defaults..."
git config --global init.defaultBranch main
git config --global pull.rebase true
git config --global push.autoSetupRemote true

echo ""
echo "=== Bootstrap Complete ==="
echo ""
echo "Next steps:"
echo "  1. In Claude Code, run: /plugin marketplace add obra/superpowers-marketplace"
echo "  2. Then run: /plugin install superpowers@superpowers-marketplace"
echo "  3. Clone your project repos and start building"
echo ""
