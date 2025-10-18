# Vault Status Command

Check the status of automatic vault syncing.

## Instructions for Claude

When this command is executed:

1. Check launchd agent status:
   ```bash
   launchctl list | grep obsidian-vault-sync
   ```

2. Show last 10 sync log entries:
   ```bash
   tail -20 ~/.obsidian-sync.log
   ```

3. Show any errors from stderr:
   ```bash
   tail -10 ~/.obsidian-sync.stderr 2>/dev/null || echo "No errors logged"
   ```

4. Show next scheduled run times (explain that it runs Mon-Fri at 9 AM and 5 PM)

5. Display current git status:
   ```bash
   cd "/Users/malachirose/Library/Mobile Documents/iCloud~md~obsidian/Documents/malachi-main" && git status --short
   ```

Provide a concise summary of:
- ✅ or ❌ whether auto-sync is active
- Last successful sync timestamp
- Number of uncommitted files (if any)
- Next scheduled sync time
