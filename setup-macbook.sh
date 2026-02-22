#!/bin/bash
set -e

echo "=== Momentus MacBook Pro Setup ==="
echo ""

# Detect home directory (works for both /Users/sam and /Users/jenko)
HOME_DIR="$HOME"
PROJECTS_DIR="$HOME_DIR/Projects"

echo "Setting up in: $PROJECTS_DIR"
echo ""

# 1. Create folder structure
echo "Creating folder structure..."
mkdir -p "$PROJECTS_DIR"/{momentus,clients/{elleriley,pitchblack,snap,mccann},personal,resources,workshop}

# 2. Clone Momentus internal repos
echo ""
echo "Cloning Momentus internal repos..."
cd "$PROJECTS_DIR/momentus"
[ ! -d "aura" ] && gh repo clone wearemomentus/aura || echo "aura already exists"
[ ! -d "mml" ] && gh repo clone wearemomentus/mml || echo "mml already exists"
[ ! -d "reshape" ] && gh repo clone wearemomentus/reshape || echo "reshape already exists"
[ ! -d "website" ] && gh repo clone wearemomentus/momentus-website website || echo "website already exists"

# 3. Clone resources
echo ""
echo "Cloning resources..."
cd "$PROJECTS_DIR/resources"
[ ! -d "momentus-engine" ] && gh repo clone wearemomentus/momentus-engine || echo "momentus-engine already exists"
[ ! -d "template-next-dashboard" ] && gh repo clone wearemomentus/template-next-dashboard || echo "template-next-dashboard already exists"

# 4. Clone client repos
echo ""
echo "Cloning client repos..."

cd "$PROJECTS_DIR/clients/pitchblack"
[ ! -d "CreativeOS" ] && gh repo clone wearemomentus/pitchblack-creativeos CreativeOS || echo "CreativeOS already exists"

cd "$PROJECTS_DIR/clients/snap"
[ ! -d "creative-strategy-OS" ] && gh repo clone wearemomentus/snap-creativestrategyos creative-strategy-OS || echo "creative-strategy-OS already exists"

cd "$PROJECTS_DIR/clients/elleriley"
[ ! -d "reportmcp" ] && gh repo clone wearemomentus/elleriley-reportmcp reportmcp || echo "reportmcp already exists"
[ ! -d "cin7-mcp" ] && gh repo clone wearemomentus/elleriley-cin7-mcp cin7-mcp || echo "cin7-mcp already exists"
[ ! -d "shopify-mcp" ] && gh repo clone wearemomentus/elleriley-shopify-mcp shopify-mcp || echo "shopify-mcp already exists"
[ ! -d "google-ads-mcp" ] && gh repo clone wearemomentus/elleriley-google-ads-mcp google-ads-mcp || echo "google-ads-mcp already exists"
[ ! -d "google-analytics-mcp" ] && gh repo clone wearemomentus/elleriley-google-analytics-mcp google-analytics-mcp || echo "google-analytics-mcp already exists"

cd "$PROJECTS_DIR/clients/mccann"
[ ! -d "agencyofthefuture" ] && gh repo clone wearemomentus/mccann-agencyofthefuture agencyofthefuture || echo "agencyofthefuture already exists"

# 5. Clone personal repos
echo ""
echo "Cloning personal repos..."
cd "$PROJECTS_DIR/personal"
[ ! -d "canopy" ] && gh repo clone samjenkins87/canopy || echo "canopy already exists"

echo ""
echo "=== Setup Complete ==="
echo ""
echo "Structure created at $PROJECTS_DIR:"
echo "├── momentus/     (aura, mml, reshape, website)"
echo "├── clients/      (pitchblack, snap, elleriley, mccann)"
echo "├── personal/     (canopy)"
echo "├── resources/    (momentus-engine, template-next-dashboard)"
echo "└── workshop/"
echo ""
echo "To sync changes from Mac Studio:"
echo "  cd [project] && git pull"
echo ""
