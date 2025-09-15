# LinkedIn Content Style Calibration Guide

## Purpose
Instructions for fine-tuning the `linkedin-content-creator` sub-agent to match your preferred writing style and voice.

## Style Calibration Process

### Step 1: Collect Style References
Save 3-5 posts from writers you admire to `Projects/Content_Creation/Style_References/` using this format:

**File naming convention**: `StyleRef_[AuthorName]_[PostType]_[Date].md`

**Content structure template**:
```markdown
# Style Reference: [Author Name] - [Post Type]

## Original Post
[Full post text here]

## What Works Analysis
- **Hook style**: [Question/bold statement/story/data?]
- **Tone**: [Conversational/authoritative/humble/provocative?] 
- **Structure**: [List/narrative/problem-solution?]
- **Length**: [Word count and sentence pacing]
- **Engagement technique**: [Questions/controversy/vulnerability?]

## Techniques to Emulate
- [Specific writing patterns to copy]
- [Phrases or transitions they use]
- [How they end posts]

## Tags
#style-reference #[author-name] #linkedin
```

### Step 2: Calibrate the Agent
When using `/linkedin-content-creator`, give specific style instructions like:
- *"Write this more conversationally like [AuthorName]'s style"*
- *"Use data-driven hooks like the StyleRef_[filename] example"*
- *"Make the tone more provocative/humble like [specific example]"*
- *"Structure this as a story arc like [AuthorName] does"*

### Step 3: Iterate and Refine  
The agent will learn your preferences over time. After each draft, provide feedback like:
- *"Too formal - make it more casual"*
- *"Great hook, but the ending needs a stronger call-to-action"*  
- *"This captures [AuthorName]'s style perfectly"*

The system will track this feedback and apply it to future content creation.

## Voice Analysis Framework

For each style reference, analyze these elements:

### Opening Hook Styles
- **Question**: "What if I told you..."
- **Bold Statement**: "This changes everything."
- **Personal Story**: "Last week, I made a mistake..."
- **Data Point**: "73% of startups fail because..."
- **Contrarian Take**: "Everyone talks about X, but Y is what really matters."

### Narrative Structure Options
- **Linear Story**: Beginning → Middle → End with lesson
- **List Format**: "Here are 5 things I learned..."
- **Problem/Solution**: Pain point → How I solved it → Results
- **Before/After**: Where I was → What changed → Where I am now

### Tone Variations
- **Conversational**: Like talking to a friend over coffee
- **Authoritative**: Expert sharing definitive insights
- **Humble**: Learning in public, sharing failures
- **Provocative**: Challenging conventional wisdom
- **Inspirational**: Motivating others to take action

### Length & Pacing Guidelines
- **Short & Punchy**: 1-2 sentence paragraphs, high impact
- **Medium Depth**: 3-4 sentences per point, balanced
- **Long-Form**: Detailed exploration, story-driven

### Engagement Techniques
- **Direct Questions**: "What's your experience with this?"
- **Controversial Takes**: Opinions that spark debate
- **Personal Vulnerability**: Sharing failures and lessons
- **Call-to-Action**: Specific next steps for readers
- **Community Building**: "Tag someone who needs to see this"

## Common Style Combinations

### The Thought Leader
- Data-driven hooks + authoritative tone + strategic insights
- Example: "Here's what 5 years of growth marketing taught me..."

### The Storyteller  
- Personal story hooks + conversational tone + lesson reveal
- Example: "I almost quit my job last Tuesday. Here's why I didn't..."

### The Contrarian
- Bold statement hooks + provocative tone + challenging assumptions
- Example: "Stop optimizing your funnel. Start optimizing your message."

### The Coach
- Question hooks + inspirational tone + actionable advice
- Example: "Struggling with team alignment? Try this framework..."

## Style Calibration Examples

### Making Content More Conversational
**Before**: "Organizations should prioritize data-driven decision making processes."
**After**: "Here's the thing about data - most teams collect it but never actually use it."

### Adding Personal Story Elements
**Before**: "A/B testing is important for optimization."
**After**: "I ran 47 A/B tests last quarter. 43 failed miserably. Here's what the 4 winners taught me..."

### Increasing Engagement
**Before**: "Content marketing requires consistency."
**After**: "I posted on LinkedIn for 90 days straight. The results surprised me. (Spoiler: It wasn't what you think.)"

## Feedback Integration Process

### After Each Draft Review
1. **What worked well?** - Elements to keep and amplify
2. **What felt off?** - Style mismatches to correct
3. **Engagement prediction** - Will this resonate with my audience?
4. **Voice authenticity** - Does this sound like me?

### Common Adjustments
- **Too corporate** → Add personal pronouns, casual language
- **Too casual** → Add expertise signals, strategic insights
- **Too long** → Break into shorter paragraphs, trim unnecessary words
- **Too short** → Add context, examples, or deeper insights
- **No hook** → Start with question, story, or bold statement
- **Weak ending** → Add specific call-to-action or thought-provoking question

## Success Metrics

Track style calibration effectiveness through:
- **Engagement rates**: Likes, comments, shares on published content
- **Voice consistency**: Does content feel authentically "you"?
- **Audience response**: Quality of comments and discussions generated
- **Writing efficiency**: How quickly agent produces on-target drafts
- **Style evolution**: Improvement in matching preferred authors over time

## Style Reference Organization

### Recommended Authors to Study by Category

**Growth Marketing Thought Leaders:**
- [Add your preferred growth marketing voices]

**AI/Tech Strategy:**
- [Add your preferred AI industry voices]

**Entrepreneurship/Leadership:**
- [Add your preferred business leadership voices]

**Personal Brand Building:**
- [Add your preferred personal branding examples]

### File Organization
```
Style_References/
├── Growth_Marketing/
│   ├── StyleRef_AuthorName_Strategy_2025-01-09.md
│   └── StyleRef_AuthorName_CaseStudy_2025-01-08.md
├── AI_Tech/
│   ├── StyleRef_AuthorName_TrendAnalysis_2025-01-09.md
│   └── StyleRef_AuthorName_ProductLaunch_2025-01-07.md
└── Leadership/
    ├── StyleRef_AuthorName_TeamBuilding_2025-01-09.md
    └── StyleRef_AuthorName_Vision_2025-01-06.md
```

## Integration with Content Workflow

1. **Clip Article** → Use Content_Clipping_Template
2. **Add Style Notes** → Reference preferred style for this content type
3. **Run Agent** → Use `/linkedin-content-creator` with style instructions
4. **Review Draft** → Apply style calibration feedback
5. **Publish** → Archive with style notes for future reference
6. **Analyze Performance** → Update style preferences based on engagement

---

*This guide should be referenced whenever you want to adjust or improve the linkedin-content-creator agent's output style.*

## Tags
#style-calibration #linkedin-content-creator #personal-brand #content-strategy #writing-voice