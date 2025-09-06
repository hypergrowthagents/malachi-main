# Vault Sync Command

This command synchronizes your Obsidian vault between GitHub and local, ensuring no work is lost.

## Usage
Run this command anytime you:
- Start a work session
- Before making major changes
- After Claude completes GitHub issues
- Before committing/pushing changes

## What it does
1. **Commits/stashes** any uncommitted local changes
2. **Fetches** all remote changes from GitHub
3. **Auto-merges** Claude branches (claude/*)
4. **Pulls** latest changes on main branch
5. **Pushes** any local commits
6. **Cleans up** merged remote branches

## Command
```bash
git sync
```

Or run directly:
```bash
./.claude/sync-vault.sh
```

## Safety Features
- Automatically commits or stashes local changes before sync
- Shows preview of what will be merged
- Handles merge conflicts gracefully
- Prevents data loss through pre-push hooks
- Provides detailed status reporting

## Conflict Resolution
If merge conflicts occur:
1. Script will abort the merge
2. Run manual merge: `git merge origin/claude/[branch-name]`
3. Resolve conflicts in your editor
4. Complete merge: `git commit`
5. Run sync again: `git sync`