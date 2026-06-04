#!/usr/bin/env bash
set -e
command -v gh >/dev/null || { echo "Install GitHub CLI"; exit 1; }
command -v node >/dev/null || { echo "Install Node.js 20+"; exit 1; }
gh auth status >/dev/null 2>&1 || { echo "Run: gh auth login"; exit 1; }
chmod +x scripts/*.sh
echo "✅ Setup complete"
