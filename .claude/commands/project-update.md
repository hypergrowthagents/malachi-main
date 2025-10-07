# Project Update Command

## Purpose
Updates the PROJECT_PROGRESS.md file in the current project folder to maintain strategic context continuity between sessions. Designed for lightweight, quick updates after significant decisions or work sessions.

## What This Command Does
1. Identifies the current active project based on context
2. Locates or creates PROJECT_PROGRESS.md in the project folder
3. Updates key sections based on recent work:
   - Current Focus (one-liner on direction)
   - Recent Decisions (latest first, with dates)
   - What's Been Tried (what worked/didn't)
   - Active Threads (current tasks)
   - Next Session Pickup (where to start next time)

## When to Use
- ✅ **After significant decisions** (positioning pivot, ICP refinement, strategy change)
- ✅ **After major work sessions** (completed research, created deliverables, finished planning)
- ✅ **Before ending a work session** (capture "where to pick up next time")
- ✅ **When direction changes** (deprioritized approach, new hypothesis, pivot)
- ❌ **NOT for daily task completion** (use logging agent for task logs)
- ❌ **NOT for minor updates** (small edits, typo fixes, routine work)

## Usage

### Basic Usage
```
/project-update
```
I'll ask you to confirm the project and describe what changed, then update PROJECT_PROGRESS.md automatically.

### With Context
```
/project-update [quick summary of what changed]
```
Example: `/project-update pivoted from guarantee-led to identity-based positioning`

## What I'll Ask You
1. **Which project?** (I'll suggest based on recent file activity)
2. **What changed?** (decisions, learnings, direction shifts)
3. **What's the current focus?** (if it shifted)
4. **What should we pick up next session?** (optional but helpful)

## What Gets Updated

### Recent Decisions
```markdown
- **2025-10-01**: [Your decision/change with brief context]
```

### What's Been Tried
```markdown
- ✓ **Approach name** - Why it worked/what we learned
- ✗ **Approach name** - Why it didn't work/what we learned
```

### Active Threads
```markdown
- [ ] Next action item
- [x] Completed item (moved to Recent Decisions)
```

### Next Session Pickup
```markdown
**Immediate Next Steps:**
1. [What to do first]
2. [What to do second]

**Questions to Explore:**
- [Open question needing research/decision]
```

## Format Philosophy - CRITICAL RULES

**ULTRA-LIGHTWEIGHT ONLY.** This is NOT documentation - it's context recovery:

**Mandatory Constraints:**
- **One-liners ONLY** - Never write paragraphs or multi-sentence explanations
- **3-5 bullets MAX per section** - If you need more, you're over-documenting
- **60-second scan rule** - Future Claude must understand context in one minute
- **Decision + WHY only** - Skip the HOW, skip implementation details, skip explanations

**Good vs. Bad Examples:**

❌ **TOO VERBOSE:**
```markdown
- **2025-10-01**: After extensive discussion with Derek Steer about positioning strategy,
we decided to shift our approach from leading with the performance guarantee (which Derek
noted has become overused in the market and creates skepticism) to instead focusing on
identity-based positioning similar to PostHog's playbook...
```

✅ **CORRECT - ONE-LINER:**
```markdown
- **2025-10-01**: Shifted from guarantee-led to identity-based positioning (Derek: guarantees are overused)
```

**If you catch yourself writing more than one line per bullet, STOP and compress it.**

## Example Update Flow

**You:** `/project-update shifted positioning based on Derek call`

**Me:**
```
I see you've been working on "Select initial Augment offering" project.

I'll update PROJECT_PROGRESS.md with:

Recent Decisions:
- 2025-10-01: Shifted from guarantee-led to identity-based positioning (PostHog playbook)

Current Focus:
- Positioning for operators who demand transparency and velocity

Next Session Pickup:
- Finalize Customer Discovery Call Framework
- Begin outreach for 25 validation calls

Sound good?
```

**You:** `yes`

**Me:** ✅ Updated [PROJECT_PROGRESS.md](path/to/file)

## Integration with Workflow
- Complements weekly planning (strategic context vs. task planning)
- Works with logging agent (strategic decisions vs. task completion)
- Supports `/daily-assistant` (provides project context for daily planning)
- Helps vault-organizer understand project state during cleanup

## Technical Details
- Updates existing PROJECT_PROGRESS.md if found
- Creates new file if missing (using template from pilot project)
- Preserves existing content (only updates changed sections)
- Maintains markdown formatting and wiki-links
- Adds appropriate status tags

## Quick Tips
- **Too much detail?** You're documenting, not progressing. Keep it to decision + rationale.
- **Feeling like a chore?** You're updating too frequently. Only after significant changes.
- **Lost context between sessions?** You're not updating enough. Capture "next pickup" before ending work.
- **Unsure if it's significant?** Ask yourself: "Would future me want to know this decision/learning?"
