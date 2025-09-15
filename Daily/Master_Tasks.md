# Master Task Dashboard

> **Central command center for daily prioritization and task management**

---

## 🚀 Today's Unified Focus
*Claude uses this section to help prioritize your 8:30am-5pm work blocks*

### 🔴 Must Do Today (High Priority + Due Today)
```tasks
not done
(due today) OR (priority is high)
limit 5
```

### 🟡 Should Do Today (This Week + Medium Priority)
```tasks
not done
due before next Monday
priority is medium
limit 5
```

### 🟢 Could Do Today (Quick Wins Available)
```tasks
not done
tag includes quick-win
limit 6
```

---

## ⏰ Time Block Planning

### Today's Optimal Schedule (January 11, 2025)

**8:30-9:00am**: Workout/Personal time
**9:00-10:40am**: HIGH ENERGY - Resume formatting (45min) + Domain setup (30min)
**10:40-12:00pm**: HIGH ENERGY - Begin vision doc (problem statement + target market)
**12:00-12:30pm**: Interview 
**12:30-2:30pm**: LOW ENERGY - Lunch, walk, admin tasks
**2:30-5:00pm**: HIGH ENERGY - Complete vision doc sections, LinkedIn update
**After 5:00pm**: Personal tasks, reflection

### Morning Block (9:00am - 12:00pm) - Available: 1h 20min
**High Focus Work - Tackle Big 3**
- [ ] Finish resume formatting (45min) #high-priority
- [ ] Secure augmentgrowth.ai domain (30min) #quick-win
- [ ] Start vision doc - problem statement (15min) #creative

### Afternoon Block (2:30pm - 5:00pm) - Available: 2.5 hours  
**Medium Focus + Creative Work**
- [ ] Complete vision doc sections (90min total) #creative
- [ ] Update LinkedIn profile (30min) #admin
- [ ] Review tomorrow's priorities (15min) #planning

### Evening Block (After 5:00pm)
**Personal + Low Energy Tasks**
- [ ] Evening reflection and learning capture
- [ ] Plan tomorrow using Daily_Planning_Template 

---

## 📊 Weekly Overview

### This Week's Big 3
1. **Professional**: Complete AugmentGrowth foundation (domain, vision, financial plan)
2. **Personal**: Update LinkedIn profile and resume distribution
3. **Growth**: MVP approach to task breakdown and daily execution optimization

### Weekly Scorecard
- [ ] Job search activities completed
- [ ] AI agent development progress made
- [ ] Content creation targets met
- [ ] Personal health/wellness maintained
- [ ] Administrative tasks handled

---

## 🚦 Task Status Overview

### 🔥 High Priority & Urgent
```tasks
not done
(priority is high) AND (due before tomorrow)
group by path
```

### ⏳ Blocked/Waiting Items
```tasks
not done
tag includes blocked
```

### ⚡ Quick Wins Available
```tasks
not done
tag includes quick-win
limit 10
group by path
```

### 📅 Overdue Items Needing Attention
```tasks
not done
due before today
``` 

---

## 🎯 Energy-Based Task Assignment

### High Energy Required (9-12am, 2:30-5pm)
*Complex, creative, or strategic work*
```tasks
not done
tag includes creative OR tag includes strategic
limit 5
```

### Medium Energy Required  
*Standard tasks, meetings, communications*
```tasks
not done
(priority is medium) AND !(tag includes quick-win)
limit 5
```

### Low Energy Required (12-2:30pm, after 5pm)
*Administrative, routine, or simple tasks*
```tasks
not done
tag includes quick-win OR tag includes admin
limit 8
``` 

---

## 📈 Progress Tracking

### Professional Accomplishments This Week
- 

### Personal Wins This Week
- 

### Key Lessons Learned
- 

---

## 🔄 Task Flow Management

### Recently Completed (This Week)
```tasks
done after last Monday
limit 10
group by done
```

### Professional Tasks In Progress
```tasks
not done
path includes Professional_Todos
tag includes in-progress
```

### Personal Tasks In Progress
```tasks
not done
path includes Personal_Todos
tag includes in-progress
```

### Needs Review
```tasks
not done
tag includes needs-review
``` 

---

## 📋 Quick Links

- [[02_Areas/Career_Development/Professional_Todos]] - Active professional tasks
- [[02_Areas/Personal_Systems/Personal_Todos]] - Life management tasks
- [[02_Areas/AI_and_Technical_Skills/AI_Agent_Ideas]] - AI development backlog
- [[02_Areas/Content_and_Brand/Content_Ideas]] - Content creation pipeline
- [[02_Areas/Business_Development/Business_Ideas]] - Fractional business development
- [[02_Areas/Personal_Systems/Backlog]] - General someday/maybe items

---

## 🎪 Claude Assistant Integration

### Daily Planning Prompt
*Use this when asking Claude to help prioritize your day*

"Based on my current tasks, energy level, and schedule constraints, help me prioritize today's focus items and suggest optimal time blocks for completion."

### Weekly Review Prompt
*Use this for weekly planning sessions*

"Review my completed tasks and help me plan next week's priorities, considering upcoming deadlines and long-term goals."

---

*Last Updated: {{date:YYYY-MM-DD HH:mm}}*
*Next Review: Daily at 8:30am and 5:00pm*