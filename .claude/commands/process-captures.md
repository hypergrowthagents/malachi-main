# Process Captures Command

**Purpose**: Automatically organize mobile captures from Daily/Inbox.md using vault-organizer agent integration

**Usage**: `/process-captures`

## What This Command Does

1. **Scans** Daily/Inbox.md for new captured ideas, tasks, and resources
2. **Calls vault-organizer agent** to analyze and categorize content using PARA structure
3. **Presents organized suggestions** for your approval before moving items
4. **Executes moves** to appropriate locations after confirmation
5. **Clears processed items** from inbox to keep it clean

## Command Workflow

```
Read Daily/Inbox.md →
Call vault-organizer agent with content analysis →
Present categorization suggestions →
Get user approval →
Execute moves to PARA locations →
Clear processed items from inbox
```

## Integration Points

**Vault-Organizer Agent Focus:**
- Analyze captured content for optimal PARA placement
- Recognize patterns for existing files (like AI_Agent_Ideas.md)
- Suggest appropriate tags, effort levels, and context
- Recommend frontmatter and GTD properties

**Target Destinations:**
- Ideas → `02_Areas/*/` appropriate area folders or existing backlogs
- Tasks → Task system with proper tags and due dates
- Projects → `01_Projects/` if substantial enough
- Resources → `03_Resources/` for reference materials

## Usage Pattern

**Mobile (Night):** Quick capture → Daily/Inbox.md
**Desktop (Morning):** Run `/process-captures` → Review suggestions → Approve → Organized

This leverages the vault-organizer's pattern recognition while maintaining approval gates for control and learning.