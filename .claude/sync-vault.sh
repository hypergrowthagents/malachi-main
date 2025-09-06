#!/bin/bash

# Malachi's Vault Sync Script
# Ensures GitHub and local changes are always in sync
# Prevents conflicts and data loss

set -e  # Exit on any error

echo "🔄 Starting vault sync..."

# Colors for output
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[0;33m'
BLUE='\033[0;34m'
NC='\033[0m' # No Color

# Function to print colored output
print_status() {
    echo -e "${BLUE}[SYNC]${NC} $1"
}

print_warning() {
    echo -e "${YELLOW}[WARN]${NC} $1"
}

print_error() {
    echo -e "${RED}[ERROR]${NC} $1"
}

print_success() {
    echo -e "${GREEN}[SUCCESS]${NC} $1"
}

# Check if we're in a git repository
if ! git rev-parse --git-dir > /dev/null 2>&1; then
    print_error "Not in a git repository!"
    exit 1
fi

# Store current branch
CURRENT_BRANCH=$(git branch --show-current)
print_status "Current branch: $CURRENT_BRANCH"

# Check for uncommitted changes
if ! git diff --quiet || ! git diff --staged --quiet; then
    print_warning "You have uncommitted changes:"
    git status --porcelain
    echo
    read -p "Do you want to commit these changes first? (y/N): " -n 1 -r
    echo
    if [[ $REPLY =~ ^[Yy]$ ]]; then
        print_status "Committing local changes..."
        git add .
        git commit -m "Auto-commit before sync

🤖 Generated with Claude Code
        
Co-Authored-By: Claude <noreply@anthropic.com>"
    else
        print_warning "Stashing local changes..."
        git stash push -m "Auto-stash before sync $(date)"
    fi
fi

# Fetch all remote changes
print_status "Fetching from remote..."
git fetch origin

# Check for Claude branches that need merging
CLAUDE_BRANCHES=$(git branch -r | grep "origin/claude/" | sed 's/origin\///' | tr -d ' ')

if [ -n "$CLAUDE_BRANCHES" ]; then
    print_status "Found Claude branches to merge:"
    echo "$CLAUDE_BRANCHES"
    
    for branch in $CLAUDE_BRANCHES; do
        print_status "Merging $branch..."
        if git merge "origin/$branch" --no-edit -m "Auto-merge Claude changes from $branch

🤖 Generated with Claude Code

Co-Authored-By: Claude <noreply@anthropic.com>"; then
            print_success "Successfully merged $branch"
            
            # Delete the remote branch after successful merge
            print_status "Cleaning up remote branch $branch..."
            git push origin --delete "$branch" 2>/dev/null || print_warning "Could not delete remote branch $branch"
        else
            print_error "Merge conflict in $branch! Manual resolution required."
            git merge --abort
            print_warning "Run 'git merge origin/$branch' manually to resolve conflicts"
        fi
    done
fi

# Pull any changes on main branch
if [ "$CURRENT_BRANCH" = "main" ]; then
    print_status "Pulling latest changes on main..."
    if git pull origin main; then
        print_success "Main branch updated successfully"
    else
        print_error "Failed to pull main branch changes"
    fi
fi

# Push any local commits
if git log origin/main..HEAD --oneline | grep -q .; then
    print_status "Pushing local commits..."
    if git push origin "$CURRENT_BRANCH"; then
        print_success "Local commits pushed successfully"
    else
        print_warning "Failed to push local commits"
    fi
else
    print_status "No local commits to push"
fi

# Final status
print_success "Vault sync complete!"
git status --porcelain | wc -l | xargs -I{} echo "Uncommitted files: {}"

echo
print_status "Summary:"
echo "  📍 Branch: $CURRENT_BRANCH"
echo "  🔄 Sync completed successfully"
echo "  📁 Files are now in sync between GitHub and local"