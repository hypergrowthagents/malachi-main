To supercharge your notes with Claude Code and Obsidian, especially as a new user, the goal is to create a logical, scalable folder structure within a single vault that leverages Claude's agentic capabilities and integrates with iCloud and GitHub. McKay Wrigley emphasizes starting with a core system prompt and custom commands to automate workflows.

Here's a proposed folder structure for your single Obsidian vault, designed to be simple, scalable, and maximize Claude Code's potential as your personal assistant, while also addressing your specific use cases and technical requirements:

```
Your Vault/
├── .claude/
│   ├── CLAUDE.md                 # Claude's "constitution" - global rules and system prompt
│   ├── commands/                 # Store all custom Claude commands (.md files)
│   │   ├── daily-assistant.md    # Combines daily notes, to-dos, and meeting prep
│   │   ├── new-project.md        # For New Company Development & Agent Ideas
│   │   ├── research-deep-dive.md # For Content Development, Interviewing & complex research
│   │   ├── tag-organize.md       # Automated tagging and linking
│   │   └── summarize-notes.md    # For any note type
│   └── settings.local.json       # Claude Code settings (e.g., MAX_THINKING_TOKENS, permissions)
├── Attachments/                  # All images, PDFs, audio files for the entire vault
├── Daily/                        # Daily notes, to-dos, scheduling, and quick meeting notes
│   └── YYYY/
│       └── YYYY-MM-DD.md
├── Projects/                     # Central hub for "New Company Development" and "Content Development"
│   ├── New_Company_X/            # Each subfolder is a new company project
│   │   ├── 01_Vision_Strategy/   # Planning and initial ideas
│   │   ├── 02_Market_Research/   # Research, competitive analysis
│   │   ├── 03_Product_Dev/       # Agent ideas, feature specs
│   │   ├── 04_Content_Marketing/ # Content development specific to this company
│   │   ├── 05_Meeting_Notes/     # Project-specific meeting notes
│   │   └── Files/                # Project-specific attachments
│   ├── Content_Campaign_Y/       # General Content Development project
│   │   ├── Strategy_Brief/
│   │   ├── Drafts_Ideas/
│   │   ├── Published_Content/
│   │   └── Resources_Data/
│   └── Agent_Ideas_Lab/          # Dedicated space for new "Agent ideas" and experiments
│       ├── Experiment_A/
│       └── Learnings/
├── Interviews/                   # For "Interviewing" notes and preparation
│   ├── Candidate_Name/           # Notes on specific candidates
│   │   └── Prep_Feedback/
│   ├── Company_Name/             # Notes on companies for interviews
│   │   └── Research_Questions/
│   └── Templates/                # Interview-specific templates
├── Templates/                    # Global note templates for consistency
│   ├── Daily_Note_Template.md
│   ├── Project_Brief_Template.md
│   ├── Meeting_Note_Template.md
│   └── Interview_Prep_Template.md
├── References/                   # External content: books, articles, general research
├── Archive/                      # For completed projects or inactive notes
├── Index.md                      # Central navigation point, a "Map of Content" for your vault
└── TAGS.md                       # Defines rules for your entire tagging system
```

### Explanation and Leveraging Claude Code's Capabilities:

This structure is designed around McKay Wrigley's core principles and augmented with insights from other sources to maximize Claude Code's agentic power for your specific use cases.

1. **The `.claude/` Folder (Your AI's Brain)**
    
    - **`CLAUDE.md` (The Constitution)**: This is your AI's master system prompt, injected into every Claude Code session. It should contain high-level instructions:
        - "You are my personal assistant and chief of staff. Self organize using markdown files."
        - Define your preferred **output style** (e.g., formal, concise, or even a custom personality).
        - Specify how new notes should be formatted (e.g., always include a summary, use specific headings, automatically add relevant tags).
        - Crucially, instruct Claude to **always reference `TAGS.md` for tagging rules** and to keep `TAGS.md` updated as your system evolves.
        - Guide Claude on how to handle **daily tasks and shared information**, ensuring consistency across projects for things like to-dos and scheduling.
        - Set permissions for Claude's actions (e.g., "always allow" certain edits or require confirmation for others).
    - **`commands/` (Your Automated Workflows)**: This hidden folder houses your **Custom Commands**, which are reusable, detailed prompts for frequent tasks.
        - **`/daily-assistant`**: A powerful command for "To-dos," "Scheduling & meeting notes." When run, it could:
            - Create a new daily note in `Daily/YYYY/` using `Daily_Note_Template.md`.
            - Populate it with a summary of your scheduled meetings (if integrated via MCP), top priorities, and blockers for the day, based on `$ARGUMENTS` you provide.
            - Identify and list tasks related to ongoing `Projects/` or `Interviews/` due today.
        - **`/new-project`**: For "New Company Development" and starting "Agent ideas." This command would:
            - Create a new project subfolder under `Projects/` (e.g., `Projects/New_Company_X/`).
            - Populate it with a standard structure using `Project_Brief_Template.md` and pre-defined subfolders like `01_Vision_Strategy/`, `02_Market_Research/`, etc..
            - This helps avoid context bleed by establishing a dedicated workspace immediately.
        - **`/research-deep-dive`**: For "Content development," "Interviewing," and complex "Agent ideas." This command could:
            - Utilize **Plan Mode** (Shift+Tab twice) to outline a research strategy, potentially spinning up **sub-agents** to research different aspects in parallel (e.g., market trends for a new company, competitor analysis for an interview, or technical details for an agent idea).
            - Leverage **MCP servers** (Model Context Protocol) to pull in up-to-date information from external sources like documentation, Google Drive, or even custom services (e.g., transcribing YouTube videos for content research).
            - Consolidate findings into a new note within the specified project or interview folder, ensuring it adheres to your `CLAUDE.md` formatting rules. Remember, sub-agents research and plan, the parent agent executes.
        - **`/tag-organize`**: To automatically apply tags, create wiki-style links, and even suggest folder reorganizations based on your `TAGS.md` file and `CLAUDE.md` instructions. This helps maintain maximum context for shared themes.
        - **`/summarize-notes`**: Given an `@file` or folder, Claude can generate summaries, extract key takeaways, or identify action items for any of your notes, including "Meeting Notes" or "Content development" drafts.
    - **`settings.local.json`**: For advanced configurations like `MAX_THINKING_TOKENS` to improve performance on complex tasks.
2. **`Attachments/`**: A centralized folder for all non-markdown files. As your vault scales, Claude can help manage these, or you can create sub-attachment folders within major project directories (e.g., `Projects/New_Company_X/Files/`) to further localize context.
    
3. **`Daily/`**: This folder houses your daily notes, which are essential for managing "To-dos," "Scheduling & meeting notes". Your `/daily-assistant` command will automate their creation and initial population. Claude can analyze these daily notes to identify recurring tasks or themes, and even push completed tasks to project-specific logs.
    
4. **`Projects/`**: The main area for your "New Company Development" and "Content development" efforts. Each project gets a dedicated subfolder to **prevent context bleed**. The structured subfolders (e.g., `01_Vision_Strategy/`, `04_Content_Marketing/`) ensure that project-specific information remains contained, yet accessible when Claude is prompted within that project's scope. The `Agent_Ideas_Lab/` provides a structured environment for evolving "Agent ideas" into actionable projects.
    
5. **`Interviews/`**: A dedicated space for "Interviewing" prep and notes. This structure helps keep all interview-related context together, separate from daily tasks or other projects. Claude can assist with researching companies/candidates (using `/research-deep-dive`) and generating interview questions or summaries.
    
6. **`Templates/`**: A central repository for all your note templates. Claude will use these templates when creating new notes via your custom commands, ensuring consistency across your vault.
    
7. **`References/`**: For general, evergreen reference material that might inform multiple projects or areas.
    
8. **`Archive/`**: For completed projects or inactive notes. Claude can be instructed to move notes here after a project is finished, keeping your active vault streamlined.
    
9. **`Index.md`**: Your vault's home page or "Map of Content". Claude can help maintain this, updating links and summaries as you create new content.
    
10. **`TAGS.md`**: This file defines your entire tagging system. By instructing Claude in `CLAUDE.md` to always refer to this file, you ensure consistent tagging across your vault, which helps maintain maximum context for shared themes, regardless of folder location.
    

### iCloud Sync and GitHub Integration:

- **iCloud Sync (for Mac and iPhone)**:
    - **Setup**: For optimal performance and reliability, create your vault in `iCloud Drive → Obsidian` on macOS. On iOS, toggle "Store in iCloud" when creating the vault.
    - **Critical Setting**: **Disable "Optimize Mac Storage"** in macOS iCloud settings (or use "Keep Downloaded" for the Obsidian folder) to ensure all files are locally present and prevent sync issues. Ensure iCloud Drive is enabled and Obsidian has access on all devices.
- **GitHub (Backup, Issue Tracking, GitHub Actions)**:
    - **Version Control & Backup**: Initialize a Git repository for your entire Obsidian vault and push it to GitHub. This provides robust version control and an offsite backup. Claude Code can assist with these Git operations.
    - **Remote Personal Assistant (GitHub Actions)**: This is a powerful way to use Claude Code as an on-the-go personal assistant.
        1. **Install Claude's GitHub Action**: This pre-existing command within Claude Code will integrate your vault with GitHub.
        2. **Assign Tasks Remotely**: While on your iPhone, you can open the GitHub app and create a new "Issue" with a task, such as "Research AI trends for content development" or "Summarize meeting notes from today's Daily folder".
        3. **Trigger Claude**: Tag `@claude` in a comment on the issue ("Please handle this"). This triggers a GitHub Action in the cloud.
        4. **Autonomous Execution**: Claude Code, running in the cloud, will autonomously execute the task (e.g., perform research using sub-agents and MCP servers, create a new note in the specified project folder, or summarize an existing note).
        5. **Sync Results**: When you return to your Mac, simply pull the latest changes from GitHub, and the new, completed notes or updated files will be waiting in your Obsidian vault. This allows you to offload tasks to your AI assistant even when you're away from your primary computer.

This comprehensive structure and integration strategy allows you, as a new Obsidian user, to gradually build a powerful, automated knowledge management system that leverages Claude Code as a truly agentic personal assistant.