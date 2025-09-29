# Master Agent Registry

> **Central command center for all AI agent concepts, development tracking, and portfolio management**
>
> **UPDATED**: Now aligned with [[Morpheus_Agent_Platform_Plan]] development strategy (2025-09-16)

---

## 🎯 Quick Actions

- **Add New Idea**: Add row below, create spec page, set status to 💡 Concept
- **Weekly Review**: Use `/agent-development-lab` command for pipeline management
- **Promote to Project**: Move 🚀 Active agents to `01_Projects/[Agent_Name]/`

---

## 📊 Agent Portfolio Dashboard

| Agent Name                                 | Description                                                                                                                                                                                                                                                                                              | Category | Status | Spec Link | Effort | Business Value | Notes |
| ------------------------------------------ | -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | -------- | ------ | --------- | ------ | -------------- | ----- |
| **Claude Code SDK Marketing/Growth Agent** | Companies building non-coding products on Claude Code SDK - explore marketing/growth agent powered by Claude Code<br>  - Research what companies are doing with Claude Code SDK<br>  - Brainstorm specific agent ideas for marketing/growth use cases<br>  - Evaluate technology fit and level of effort |          |        |           |        |                |       |
| **Firecrawl AI Search Readiness Analyzer** | Agent that analyzes websites for AI search optimization readiness using Firecrawl's new feature. Helps businesses ensure their sites are properly structured and optimized for AI-powered search engines and crawlers.                                                                                   |          |        |           |        |                |       |
|                                            |                                                                                                                                                                                                                                                                                                          |          |        |           |        |                |       |
|                                            |                                                                                                                                                                                                                                                                                                          |          |        |           |        |                |       |
| **TOTALS**                                 |                                                                                                                                                                                                                                                                                                          |          |        |           |        |                |       |

<!-- TBLFM: @6$6=count(@2..@5) -->
<!-- TBLFM: @6$7=count(@2..@5) -->

---

## 🔄 Status Pipeline

**💡 Concept** → **🔍 Research** → **🛠️ Ready** → **🚀 Active** → **🏭 Production**

### Status Definitions
- **💡 Concept**: Basic idea captured, needs specification development
- **🔍 Research**: Market research and feasibility analysis in progress
- **🛠️ Ready**: Spec complete, prioritized for development
- **🚀 Active**: Currently in development (moves to 01_Projects/)
- **🏭 Production**: Deployed and operational (lives in .claude/agents/)

---

## 📋 Category Breakdown

### 📊 Data & Analytics Agents
```query
table:Agent_Portfolio_Dashboard WHERE Category CONTAINS "Analytics"
```

### 💬 Content & Marketing Agents
```query
table:Agent_Portfolio_Dashboard WHERE Category CONTAINS "Content" OR Category CONTAINS "Marketing"
```

### 🎯 Business Development Agents
```query
table:Agent_Portfolio_Dashboard WHERE Category CONTAINS "Business"
```

### 🔧 Productivity & Workflow Agents
```query
table:Agent_Portfolio_Dashboard WHERE Category CONTAINS "Productivity" OR Category CONTAINS "Workflow"
```

---

## 🏷️ Effort & Value Matrix

### Quick Wins (Small Effort, High Value)
```query
table:Agent_Portfolio_Dashboard WHERE Effort = "Small" AND Business_Value = "High"
```

### Strategic Builds (Large Effort, High Value)
```query
table:Agent_Portfolio_Dashboard WHERE Effort = "Large" AND Business_Value = "High"
```

### Experimental (Small/Medium Effort, Medium Value)
```query
table:Agent_Portfolio_Dashboard WHERE Business_Value = "Medium"
```

---

## 🎯 Development Priorities

### Current Focus
- **Primary**: Agents that directly support fractional services business
- **Secondary**: Portfolio demonstration pieces for technical leadership
- **Tertiary**: Personal productivity improvements

### Selection Criteria
1. **Business Impact**: Does this create client value or business opportunities?
2. **Portfolio Value**: Does this demonstrate technical leadership?
3. **Development Feasibility**: Can this be built with current resources?
4. **Learning Value**: Does this expand technical capabilities?

---

## 📊 Portfolio Metrics

### Development Stats
- **Total Concepts**: 4
- **In Research**: 0
- **Ready for Build**: 0
- **Active Development**: 0
- **Production Agents**: 7 (in .claude/agents/)

### Category Distribution
- **Content/Marketing**: 1
- **Business Development**: 1
- **Analytics**: 1
- **Career Development**: 1

---

## 🔧 Quick Add Template

**For new agent ideas:**

```markdown
| [Agent Name] | [One sentence description] | [Category] | 💡 Concept | [[Agent_Name]] | [Small/Medium/Large] | [Low/Medium/High] | [Initial notes] |
```

**Then create specification page using Agent-Idea-Developer sub-agent**

---

## 🔗 Related Resources

- **Morpheus Platform Framework**: [[Morpheus_Agent_Platform_Plan]] - **NEW** Comprehensive platform strategy (2025-09-16)
- **Original Brainstorm**: [[AI_Agent_Brainstorm_Malachi_9-16-25]] - Historical reference and raw ideas
- **Area Hub**: [[AI_Agent_Development_Hub]] - Complete workflow and processes
- **Development Pipeline**: [[Development_Pipeline]] - Status tracking and prioritization
- **Ideas Backlog**: [[AI_Agent_Ideas]] - Raw idea capture
- **Production Agents**: [[.claude/agents/]] - Deployed and operational agents
- **Active Projects**: [[01_Projects/]] - Agents currently in development

---

## 📅 Review Schedule

- **Weekly**: Pipeline review and prioritization using `/agent-development-lab`
- **Monthly**: Portfolio strategy and business alignment assessment
- **Quarterly**: Technology landscape review and capability expansion planning

---

*Created: {{date:YYYY-MM-DD}}*
*Last Updated: {{date:YYYY-MM-DD}}*
*Next Review: Weekly*

#ai-agent-development #project-management #innovation #portfolio-strategy