# Cleanup Command

**Description**: Comprehensive vault cleanup that organizes files, updates documentation, cleans up names, and syncs with GitHub.

**Usage**: `/cleanup`

## What this command does:

1. **Vault Organization** - Runs vault-organizer agent to:
   - Move misplaced files to correct folders
   - Fix naming conventions
   - Update tags and links
   - Clean up folder structure

2. **Documentation Updates** - Updates key files:
   - VAULT_CHANGELOG.md
   - Index.md navigation
   - TAGS.md if needed

3. **Git Synchronization** - Runs sync-vault.sh to:
   - Commit changes
   - Sync with GitHub
   - Handle any conflicts

4. **Final Report** - Provides summary of:
   - Files moved/renamed
   - Documentation updated
   - Git status

This is your "one-click" vault maintenance solution that keeps everything organized and in sync.