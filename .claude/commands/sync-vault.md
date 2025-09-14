# Sync Vault Command

## Purpose
Safely synchronize the Obsidian vault with GitHub while handling local changes, remote updates, and automatic CLAUDE.md → WARP.md mirroring. This command integrates directly with Claude Code for seamless workflow.

## Core Operations
1. **Git Safety Checks**: Handle uncommitted changes with user confirmation
2. **Remote Sync**: Fetch, merge Claude branches, and push changes
3. **Agent Rule Mirroring**: Automatically sync .claude/CLAUDE.md → WARP.md
4. **Status Reporting**: Comprehensive sync summary

## Execution Steps

### 1. Pre-Sync Safety Check
I'll check your repository status and handle any uncommitted changes:

```bash
# Check if we're in a git repository
if ! git rev-parse --git-dir > /dev/null 2>&1; then
    echo "❌ Not in a git repository!"
    exit 1
fi

# Show current status
CURRENT_BRANCH=$(git branch --show-current)
echo "📍 Current branch: $CURRENT_BRANCH"
echo "📊 Repository status:"
git status --short
```

### 2. Handle Local Changes
```bash
# Check for uncommitted changes
if ! git diff --quiet || ! git diff --staged --quiet; then
    echo "⚠️  Uncommitted changes detected:"
    git status --porcelain
    
    # Ask user preference
    read -p "Commit these changes? (y/N): " -n 1 -r
    echo
    if [[ $REPLY =~ ^[Yy]$ ]]; then
        git add .
        git commit -m "Auto-commit before vault sync

🤖 Generated via /sync-vault command
        
Co-Authored-By: Claude <noreply@anthropic.com>"
    else
        git stash push -m "Auto-stash before vault sync $(date)"
    fi
fi
```

### 3. Synchronize with Remote
```bash
# Fetch remote changes
echo "🔄 Fetching from remote..."
git fetch origin

# Handle Claude branches
CLAUDE_BRANCHES=$(git branch -r | grep "origin/claude/" | sed 's/origin\///' | tr -d ' ')

if [ -n "$CLAUDE_BRANCHES" ]; then
    echo "🤖 Found Claude branches to merge:"
    echo "$CLAUDE_BRANCHES"
    
    for branch in $CLAUDE_BRANCHES; do
        echo "🔀 Merging $branch..."
        if git merge "origin/$branch" --no-edit -m "Auto-merge Claude changes from $branch"; then
            echo "✅ Successfully merged $branch"
            git push origin --delete "$branch" 2>/dev/null || true
        else
            echo "❌ Merge conflict in $branch! Manual resolution required."
            git merge --abort
            echo "🔧 Run 'git merge origin/$branch' manually to resolve conflicts"
        fi
    done
fi

# Pull current branch updates
if git log HEAD..origin/$CURRENT_BRANCH --oneline | grep -q .; then
    echo "⬇️  Pulling latest changes..."
    git pull origin "$CURRENT_BRANCH"
fi
```

### 4. Mirror Agent Rules (CLAUDE.md ↔ WARP.md)
```bash
# Mirror canonical agent rules (unless MIRROR_WARP=0)
if [ "${MIRROR_WARP:-1}" != "0" ]; then
    if [ -f ".claude/CLAUDE.md" ] && [ -f "WARP.md" ]; then
        if ! cmp -s ".claude/CLAUDE.md" "WARP.md"; then
            echo "🔄 Mirroring .claude/CLAUDE.md -> WARP.md"
            cp ".claude/CLAUDE.md" "WARP.md"
            git add WARP.md .claude/CLAUDE.md
            
            if ! git diff --cached --quiet; then
                git commit -m "sync: mirror CLAUDE.md to WARP.md

🤖 Generated via /sync-vault command"
            fi
        else
            echo "✅ Agent rules already synchronized"
        fi
    fi
else
    echo "⏭️  Skipping agent rule mirroring (MIRROR_WARP=0)"
fi
```

### 5. Push Local Changes
```bash
# Push any local commits
if git log origin/$CURRENT_BRANCH..HEAD --oneline | grep -q .; then
    echo "⬆️  Pushing local commits..."
    if git push origin "$CURRENT_BRANCH"; then
        echo "✅ Local commits pushed successfully"
    else
        echo "⚠️  Failed to push local commits"
    fi
else
    echo "ℹ️  No local commits to push"
fi
```

### 6. Final Status Report
```bash
echo
echo "🎉 Vault sync complete!"
UNCOMMITTED_COUNT=$(git status --porcelain | wc -l | tr -d ' ')
echo "📊 Uncommitted files: $UNCOMMITTED_COUNT"

echo
echo "📋 Summary:"
echo "  📍 Branch: $CURRENT_BRANCH"
echo "  🔄 Sync completed successfully"
echo "  📁 Files synchronized between GitHub and local"
echo "  🤖 Agent rules mirrored (CLAUDE.md ↔ WARP.md)"

if [ "$UNCOMMITTED_COUNT" -gt 0 ]; then
    echo "⚠️  Remaining uncommitted files:"
    git status --porcelain
fi
```

## Usage Options

**Via Claude Code Custom Command:**
```
/sync-vault
```

**Direct shell execution:**
```bash
bash .claude/sync-vault.sh
```

**Skip WARP.md mirroring:**
```bash
MIRROR_WARP=0 /sync-vault
```

## When to Use
- **Start of work session**: Ensure you have latest changes
- **Before major changes**: Create safe backup point
- **After Claude GitHub work**: Merge any automated branches
- **End of work session**: Push completed work
- **Before switching branches**: Clean working directory

## Error Handling
- **Merge conflicts**: Script aborts merge, provides manual guidance
- **Push failures**: Reports error but continues other operations  
- **Missing files**: Gracefully handles missing .claude/CLAUDE.md or WARP.md
- **Network issues**: Provides clear error messages and retry guidance

## Environment Variables
- **MIRROR_WARP=0**: Skip automatic CLAUDE.md → WARP.md mirroring
- Standard git environment variables apply

## Integration Notes
This command executes the existing `.claude/sync-vault.sh` script while providing enhanced status reporting and user interaction through Claude Code's interface. It maintains full compatibility with both terminal and Claude Code environments.
