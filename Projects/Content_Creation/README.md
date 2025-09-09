# Content Creation Workflow

## Folder Structure

### Content_Clippings/
Save articles, resources, and ideas here for the `linkedin-content-creator` agent to process.
- Name files with source and topic: `Article_TechCrunch_AI_Funding_2025-01-09.md`
- Include source URL, key insights, and your initial thoughts
- Agent monitors this folder for new content to transform

### Style_References/
Examples of LinkedIn posts from writers you want to emulate.
- Save posts that exemplify the voice/style you want to adopt
- Include analysis of what makes their writing effective
- Agent uses these as style guides for content generation

### Drafts_In_Progress/
Working drafts created by the linkedin-content-creator agent.
- Review, edit, and approve before publishing
- Agent maintains version history and tracks feedback

### Published_Archive/
Archive of all published content for reference and avoiding duplication.
- Automatically populated when content is marked as published
- Includes performance metrics and engagement data when available
- Used by agent to ensure content variety and build on previous themes

## Content Processing Workflow

1. **Save/Clip**: Add articles and resources to Content_Clippings/
2. **Transform**: Use `/linkedin-content-creator` command to generate drafts
3. **Review**: Edit drafts in Drafts_In_Progress/ folder
4. **Publish**: Post to LinkedIn and move to Published_Archive/
5. **Iterate**: Agent learns from archived content to improve future output

## Tags
- #content-creation #linkedin #personal-brand #thought-leadership