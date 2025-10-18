# Automatic Vault Sync Documentation

## Overview

Your Obsidian vault now automatically syncs to GitHub **twice daily on weekdays** (Monday-Friday) at 9 AM and 5 PM.

## System Components

### 1. LaunchD Agent
**Location:** `~/Library/LaunchAgents/com.malachirose.obsidian-vault-sync.plist`

Schedules automatic sync runs using macOS's native scheduling system. The agent:
- Runs Mon-Fri at 9:00 AM and 5:00 PM
- Survives system reboots
- Runs even when Claude Code isn't active

### 2. Wrapper Script
**Location:** `~/bin/obsidian-sync-wrapper.sh`

Handles the actual sync process:
- Sets correct PATH for git commands
- Prevents concurrent runs with lock file
- Calls your existing `.claude/sync-vault.sh` script
- Logs all activity to `~/.obsidian-sync.log`
- Sends macOS notifications on success/failure
- Keeps log size manageable (last 100 lines)

### 3. Log Files
- **Sync log:** `~/.obsidian-sync.log` - Main activity log with timestamps
- **Stdout:** `~/.obsidian-sync.stdout` - Standard output from launchd
- **Stderr:** `~/.obsidian-sync.stderr` - Error output from launchd

## Commands

### Check Sync Status
```bash
/vault-status
```
Shows current sync status, last sync time, and any uncommitted files.

### Manual Sync
```bash
/sync-vault
```
Your existing manual sync command still works for on-demand syncing.

### View Recent Sync Activity
```bash
tail -50 ~/.obsidian-sync.log
```

### Test the Sync Manually
```bash
~/bin/obsidian-sync-wrapper.sh
```

## Management Commands

### Check if Agent is Loaded
```bash
launchctl list | grep obsidian-vault-sync
```
Should show: `-	0	com.malachirose.obsidian-vault-sync`

### Unload the Agent (Disable Auto-Sync)
```bash
launchctl unload ~/Library/LaunchAgents/com.malachirose.obsidian-vault-sync.plist
```

### Reload the Agent (Enable Auto-Sync)
```bash
launchctl load ~/Library/LaunchAgents/com.malachirose.obsidian-vault-sync.plist
```

### Force Run Now (Test Schedule)
```bash
launchctl start com.malachirose.obsidian-vault-sync
```

## Customizing the Schedule

To change sync frequency, edit the plist file:
```bash
nano ~/Library/LaunchAgents/com.malachirose.obsidian-vault-sync.plist
```

Then reload:
```bash
launchctl unload ~/Library/LaunchAgents/com.malachirose.obsidian-vault-sync.plist
launchctl load ~/Library/LaunchAgents/com.malachirose.obsidian-vault-sync.plist
```

### Common Schedule Examples

**Every 2 hours (9 AM - 5 PM weekdays):**
Add more `StartCalendarInterval` entries for hours 11, 13, 15.

**Once per day (9 AM weekdays):**
Remove the 5 PM entries from the plist.

**Weekend syncs:**
Add `Weekday` entries for 6 (Saturday) and 0 (Sunday).

## Troubleshooting

### Sync Not Running?
1. Check if agent is loaded: `launchctl list | grep obsidian`
2. Check error log: `cat ~/.obsidian-sync.stderr`
3. Test wrapper manually: `~/bin/obsidian-sync-wrapper.sh`

### Permission Errors?
Ensure wrapper script is executable:
```bash
chmod +x ~/bin/obsidian-sync-wrapper.sh
```

### Git Conflicts?
The wrapper uses your existing `sync-vault.sh` which handles conflicts. Check the main sync log for details.

### Stop Getting Notifications?
Edit the wrapper script and comment out the `osascript` notification lines.

## How It Works

1. **LaunchD triggers** at scheduled times (Mon-Fri, 9 AM & 5 PM)
2. **Wrapper script** checks for existing sync process (lock file)
3. **Changes to vault directory** and runs `.claude/sync-vault.sh`
4. **Sync script** commits changes, fetches remote, merges, and pushes
5. **Notification sent** to macOS notification center
6. **Log updated** with timestamp and status

## Benefits

✅ **Set and forget** - Runs automatically without your intervention
✅ **Reliable** - Uses macOS native scheduler, survives reboots
✅ **Safe** - Lock file prevents concurrent syncs
✅ **Visible** - Notifications and logs keep you informed
✅ **Flexible** - Easy to customize schedule or disable temporarily
✅ **Tested** - Uses your existing, working sync script

## Installation Date

Installed: 2025-10-18

---

**Pro Tip:** Use `/vault-status` anytime to check if auto-sync is working and see recent activity.
