# PARA + GTD Vault Reorganization Plan (Living Document)

Status: Draft (no structural changes executed). This is the guiding source for organizing, evolving, and validating this Obsidian vault with PARA + GTD. Update this file as the system evolves.

Last updated: 2025-09-13

---

## Purpose
- Establish a numbered PARA backbone that keeps work actionable and scalable.
- Layer GTD semantics (Next Actions, Contexts, Waiting For, Reviews) using simple, consistent frontmatter.
- Preserve current automations (GitHub Actions) and agent workflows (Claude Code, Warp, Cursor).
- Keep the plan as a living artifact to inform any future reorganization.

## Confirmed Decisions
- Method: PARA + GTD (not GTM).
- Naming: Numbered root folders (01–04) and underscore_names for folders/files (approved: proceed now).
- Tooling locations: Keep .github/ and .claude/ at repository root. Moving .github breaks Actions. .claude is the conventional discovery location for Claude Code.
- Canonical agent rules file: .claude/CLAUDE.md. Root WARP.md will be mirrored from it automatically.

## Tooling Compatibility Notes
- .github/ must remain at repo root for GitHub Actions to trigger.
- .claude/ should remain at repo root for Claude Code discovery (.claude/CLAUDE.md, commands, scripts).
- WARP.md vs .claude/CLAUDE.md (single source):
  - Canonical is .claude/CLAUDE.md. We mirror .claude/CLAUDE.md → WARP.md automatically via the sync script and a pre-commit hook so Warp and Claude read identical content. We include an escape hatch (set MIRROR_WARP=0) to allow a one-off commit where WARP.md intentionally diverges.
  - Do not rely on Obsidian transclusions or symlinks for cross-tool consumption.
  - This has been implemented in the branch.

---

## Target PARA Structure (proposed; no moves yet)
- 01_Projects/
  - Each active project: 01_Projects/<Project_Name>/
  - Recommended per-project subfolders: 01_Admin/, 02_Research/, 03_Chats/, 04_Deliverables/, Files/
- 02_Areas/
  - Career_Development/
  - Business_Development/
  - AI_and_Technical_Skills/
  - Content_and_Brand/
  - Personal_Systems/
- 03_Resources/
  - Evergreen reference and topic materials (existing References/ will migrate here)
- 04_Archives/
  - Mirror of 01/02/03 for completed/inactive material
- Daily/ (keep as universal capture + review)
- Templates/ (keep; we will enhance templates incrementally)
- Attachments/ (optional central store; or use per-project Files/)
- .claude/ (keep at repo root)
- .github/ (keep at repo root)
- WARP.md (root; see “Tooling Compatibility Notes”)
- OBSIDIAN_SETUP.md (this file)

### Areas (PARA) — Definitions and Why
Areas are ongoing responsibilities without finish lines. They generate projects but are not projects themselves. They require regular review.

1) Career_Development
- Ongoing responsibility: professional positioning, skills, network, interview readiness
- Likely projects: resume updates, certifications, networking campaigns

2) Business_Development
- Ongoing responsibility: developing fractional services/company opportunities, client pipeline, offers
- Likely projects: service packaging, outreach campaigns, startup brainstorm initiatives

3) AI_and_Technical_Skills
- Ongoing responsibility: agent development, staying current with AI tooling/frameworks
- Likely projects: build new agents, evaluate tools, learning sprints

4) Content_and_Brand
- Ongoing responsibility: daily LinkedIn presence, thought leadership, public artifacts
- Likely projects: content series, speaking engagements, publishing goals

5) Personal_Systems
- Ongoing responsibility: Obsidian setup, productivity, workflows and tools
- Likely projects: system upgrades, automations, migrations

---

## Frontmatter Standards (GTD overlay)
Start simple. These fields power dashboards and reviews. Extend later if needed.

Project note (example):
---
 type: project
 status: active  # active | on-hold | completed | cancelled
 priority: high  # high | medium | low
 deadline: 2025-12-31
 area: Business_Development  # one of the Areas above
 gtd:
   next_action: "Draft offer outline for fractional growth service"
   context: "@mac"
   energy: medium       # low | medium | high
   time: 60             # minutes
   waiting_on: "Intro from Sam"
   due: 2025-10-01
 review:
   frequency: weekly
   last_reviewed: 2025-09-10
---

Area hub note (example):
---
 type: area
 name: Business_Development
 owner: Malachi
 review:
   frequency: monthly
   last_reviewed: 2025-09-01
 standards:
   - "Weekly pipeline review and one new outreach experiment"
   - "Maintain 1–2 high-priority Next Actions at all times"
---

Resource note (example):
---
 type: resource
 topics: [PARA, Obsidian, GTD]
 source: "Forte Labs"
 created: 2025-09-13
 relevance: medium
---

---

## Template Enhancements (incremental)
- Project_Brief_Template.md
  - Add frontmatter (above) and sections: Objectives, Scope, Stakeholders, Key Decisions, Risks, Next Actions, Deliverables
- Daily_Note_Template.md
  - Keep capture/inbox; add “GTD Today” block (1 Next Action, 1 Waiting For check, 1 Cleanup)
- Weekly_Review_Template.md
  - Sweep: Active/On-hold projects, Waiting For, Someday/Maybe cleanup, Area checks

Optional dashboards (Dataview):
- Active Projects
```dataview
TABLE status, deadline, priority, gtd.next_action
FROM "01_Projects"
WHERE type="project" AND status="active"
SORT priority DESC, deadline ASC
```

- Waiting For
```dataview
TABLE file.link, gtd.waiting_on, deadline
FROM "01_Projects"
WHERE type="project" AND gtd.waiting_on != null AND status="active"
SORT deadline ASC
```

- Area hub: Projects by Area
```dataview
LIST FROM "01_Projects"
WHERE type="project" AND area="Business_Development" AND status="active"
```

---

## Migration Plan (non-destructive; branch-first)
1) Pre-migration safety
- Enable Obsidian “Automatically update internal links.”
- Create git branch: reorg/para-gtd
- Tag current state: pre-para-gtd-<date>

2) Create PARA roots
- Add: 01_Projects/, 02_Areas/, 03_Resources/, 04_Archives/

3) Move references
- Move References/* —> 03_Resources/ (no renames yet)

4) Establish Areas (no nesting of projects under Areas)
- Create folders under 02_Areas:
  - Career_Development/
  - Business_Development/
  - AI_and_Technical_Skills/
  - Content_and_Brand/
  - Personal_Systems/
- Add one hub note per area with minimal frontmatter

5) Unify agent instructions (single source)
- Canonical: .claude/CLAUDE.md
- One-time copy current WARP.md content into .claude/CLAUDE.md, then establish a sync step to mirror .claude/CLAUDE.md —> WARP.md automatically (script or pre-commit). This ensures Warp and Claude Code both see the same content while you only edit one file.

6) Rename spaces —> underscores (approved)
- Batch rename file/folder names; rely on Obsidian to update internal links

7) Update Index.md
- Quick links to PARA roots and dashboards

8) Commit for review in reorg/para-gtd

Notes:
- “Startup brainstorm” items will be treated as Projects in 01_Projects/ and tagged area: Business_Development. Area hubs will surface them via queries.

---

## Backout Plan
- If anything looks off, discard the branch or reset to the pre-para-gtd tag.

## Validation & Test Plan
- Links: rely on Obsidian auto-update; then grep for markdown path links that may not auto-update (absolute/relative)
- Dashboards: open Projects dashboard; ensure Active Projects and Waiting For render
- Tasks (if used): verify GTD fields appear in your task views
- GitHub Actions: push to a test branch; confirm workflows trigger
- Claude Code: ensure .claude/CLAUDE.md (or mirrored WARP.md) is read as intended
- Scripts: run .claude/sync-vault.sh if used; update paths only if required

## Mapping of Existing Content (initial)
- References/ -> 03_Resources/
- Projects/ -> 01_Projects/ (currently empty)
- Daily/ -> keep as-is
- Templates/ -> keep; enhance templates per above
- WARP.md and .claude/CLAUDE.md -> unify via the single-source approach
- .github/ and .claude/ -> remain at repo root

---

## Decisions Applied
- Canonical agent rules file: .claude/CLAUDE.md (WARP.md mirrors it automatically)
- Space-to-underscore renames: applied during reorg branch

## Change Log
- 2025-09-13: Initial PARA + GTD plan created; Areas updated to Career_Development, Business_Development, AI_and_Technical_Skills, Content_and_Brand, Personal_Systems.

---

# GTD + Obsidian Tasks Integration Plan (Draft)

Goal: A daily-usable, low-friction task system that aligns with PARA and powers reliable daily/weekly reviews.

Design principles
- Source of truth is tasks in context (Project notes, Area hubs, Daily notes, and Backlog). No separate task database.
- Minimal ceremony: create tasks anywhere with natural language, add dates/priority inline only when helpful.
- One Master view to drive the day; purpose-built views for Projects, Areas, and Reviews.

Task capture locations
- Projects (01_Projects/<Project>/…): actionable items specific to an outcome.
- Areas (02_Areas/<Area>/*_Hub.md): maintenance tasks and standards work.
- Daily (Daily/YYYY-MM-DD.md): quick capture and one-off tasks; later processed to Projects/Areas when appropriate.
- Backlog (02_Areas/Personal_Systems or separate 00_Backlog.md): someday/maybe ideas and deferred tasks.

Recommended task syntax (Obsidian Tasks plugin)
- Create standard tasks with Markdown checkboxes; annotate inline as needed:
  - [ ] Write project brief ⏫ 📅 2025-09-20 #ctx/mac #area/Business_Development
  - [ ] Draft LinkedIn post 📅 2025-09-15 #ctx/phone #area/Content_and_Brand
- Conventions:
  - Priority: use ⏫ (high), none (default), ⏬ (low). If you prefer tags, use #p1 #p2 #p3.
  - Due date: 📅 YYYY-MM-DD (Tasks plugin supports due filters and sorting).
  - Optional: scheduled (🛫), start (⏳), recurrence (🔁 every week), depends on (↪), etc.
  - Context: #ctx/<context> (e.g., #ctx/mac, #ctx/phone)
  - Area: #area/<Area_Name> (mirrors 02_Areas folders)

Master task list (daily driver)
- Focus: not done, due today or overdue, and any explicitly scheduled for today; grouped by priority, then due.
- Add a note (e.g., Daily/Today_Master.md) with a Tasks query like:
```tasks
not done
(due before tomorrow) OR (scheduled on today)
path includes 01_Projects OR path includes 02_Areas OR path includes Daily
short mode
group by priority
sort by priority
sort by due
```

Project task view
- In each Project’s hub/brief note:
```tasks
not done
path includes "01_Projects/<Project_Name>"
short mode
sort by priority
sort by due
```

Area task view
- In each Area hub:
```tasks
not done
(tag includes "#area/Business_Development") OR (path includes "02_Areas/Business_Development")
short mode
sort by priority
sort by due
```

Backlog pattern
- A single Backlog note (e.g., 02_Areas/Personal_Systems/Backlog.md) with sections:
  - Someday/Maybe (no due date)
  - Next Candidate Projects (links to draft project briefs)
  - Deferred Ideas
- Query example for non-dated items:
```tasks
not done
no due date
path includes "02_Areas/Personal_Systems/Backlog"
short mode
```

Weekly Review flow (GTD overlay)
1) Clear inbox: process Daily notes’ unchecked tasks into Projects/Areas.
2) Review Active Projects:
```tasks
not done
path includes 01_Projects
hide done
short mode
sort by due
```
3) Waiting-For (if you annotate):
```tasks
not done
(tag includes "#waiting")
short mode
sort by due
```
4) Backlog sweep (move 1–3 items forward or archive):
```tasks
not done
path includes "02_Areas/Personal_Systems/Backlog"
short mode
```

Template updates (to apply after plan approval)
- Project_Brief_Template.md
  - Add a "## Tasks" section for project-specific checklists; include the Project task view query.
- Weekly_Review_Template.md
  - Add the Weekly Review flow queries; include a "Waiting-For" segment (tag-based or heading-based).
- Daily_Note_Template.md
  - Add a small "Today’s Focus" section and embed the Master query (or a tighter version: due today only).

Slash commands to update (after plan approval)
- .claude/commands/daily-assistant.md
  - Create/update today’s note; surface Master query; propose top 3 tasks (MITs) based on priority/due/context.
- .claude/commands/plan-today.md
  - Ask for constraints (time, energy, contexts available) and output a plan referencing the Master query.
- .claude/commands/weekly-chief-of-staff.md
  - Run the Weekly Review flow, propose project status updates, file moves (Project → Archives), and next actions.

Notes
- Keep it simple: only add dates/priority when it truly changes scheduling/selection.
- Queries can evolve—start with the Master view and one Project/Area view; expand later.
