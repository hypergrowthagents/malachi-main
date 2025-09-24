# Daily Assistant Command

## Purpose
Comprehensive daily planning workflow that integrates weekly priorities, calendar management, and continuous learning to optimize productivity and focus.

## Enhanced 8-Step Execution Process

### 1. Weekly Context Loading
**Check weekly project priorities first:**
- Review `00_Inbox/2025/WeeklyProjectPlanning/` for current week's priorities
- Extract top 3 weekly projects and their deadlines
- Note any time constraints (e.g., upcoming breaks, travel)
- Load context about project interdependencies

### 2. Accomplishment Review & Accountability
**Multi-source progress analysis:**
- Review `00_Inbox/2025/DailyPlanning/` files for previous planning and completion
- Analyze calendar events from past week to see what actually got done
- Check for any `@eowrecaps` folder items (end-of-week/day recaps)
- **Ask accountability questions** unless already answered in recap documents:
  - "Looking at your planned focus items from [last planning date], what got completed vs. what didn't?"
  - "What obstacles or insights emerged that we should factor into today's planning?"

### 3. Current Schedule Analysis
**Calendar-first approach:**
- Use **Rube MCP Google Calendar** to review existing calendar commitments
- Identify available time blocks for deep work
- Note energy patterns (high-energy: 9am-12pm, 2:30-5pm; low-energy: 12-2:30pm, after 5pm)
- Check for scheduling conflicts or optimization opportunities

### 4. Clarifying Questions & Context Integration
**Consultative priority refinement:**
- Integrate weekly priorities with daily capacity
- Ask about energy levels, constraints, and special considerations
- Identify the ONE most critical item that must be completed today
- Address any stress points or mental bandwidth concerns
- Clarify any new priorities or requests since last planning session

### 5. Optimized Time Blocking Proposal
**Energy-aligned schedule suggestions:**
- Propose 2-3 time blocking options that respect energy patterns
- Align highest-priority work with highest-energy periods
- Include buffer time and transition periods
- Suggest specific time slots for deep work vs. administrative tasks
- **Seek explicit approval** before proceeding to calendar integration

### 6. Calendar Integration (One-at-a-Time)
**Systematic calendar additions:**
- Once approved, use **Rube MCP Google Calendar** to add time blocks
- **Critical**: Add calendar events ONE AT A TIME to prevent processing errors
- Ensure each event includes:
  - Clear objectives and deliverables
  - Project folder references
  - Energy level alignment notes
- Confirm each calendar addition before proceeding to next

### 7. Daily Planning Documentation
**Structured daily note creation:**
- Create comprehensive daily planning note in `00_Inbox/2025/DailyPlanning/`
- Include:
  - Weekly project context (from step 1)
  - Previous day accountability (from step 2)
  - Calendar integration confirmations (from step 6)
  - Success criteria and accountability questions
  - Links to relevant project folders and resources
- Format based on established daily planning template structure

### 8. Learning Insights Capture
**Continuous improvement integration:**
- Ask: "Based on how yesterday/this week went, what's one insight about your productivity patterns we should remember?"
- Document insights in `02_Areas/PERSONAL_SYSTEMS/Daily_Planning_Insights.md`
- Apply learnings to today's planning (e.g., energy patterns, task duration estimates, obstacle patterns)
- Set up tomorrow's accountability by noting specific commitments being made

## Example Questions Flow

"Good morning! Let's optimize your day. First, a few quick questions:

1. What time are you starting focused work today, and when do you need to wrap up?
2. Any meetings or hard commitments already on the calendar?
3. Energy-wise, are you feeling like tackling complex strategic work or would you prefer more tactical execution tasks?
4. Looking at your main focus areas - resume development, agent ideas, business planning, content creation, and interview prep - which one feels most urgent or important for today?
5. Is there anything specific that's been on your mind that we should make sure gets addressed?"

## Output Format
After gathering responses:
1. **Accountability Summary**: Present results from chief-of-staff check-in
2. **Create the daily note** with populated sections including carry-over items
3. **Time Blocking Suggestions**: Invoke chief-of-staff agent for calendar suggestions:
   ```
   Use the Task tool to invoke the chief-of-staff agent with:
   "Based on today's priorities and existing calendar, suggest optimal time blocks for focus work. Follow the PROPOSED CALENDAR CHANGES format for any calendar suggestions."
   ```
4. **Provide 2-3 time blocking options** for consideration
5. **Suggest 1 LinkedIn content idea** tied to the day's work
6. **Identify any cross-connections** between projects
7. **Evening Accountability Setup**: "What specific commitments are you making for today that need tracking?"
8. **Ask one follow-up question** to refine the plan

## Tags to Apply
- #daily-planning #consultation #schedule-optimization #{{date:YYYY-MM-DD}}