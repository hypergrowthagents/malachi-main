User post in vibe marketers: https://www.skool.com/the-vibe-marketers/gemini-for-ui?p=bc284cc0

Gemini is performing the best IMO in creating specific UI changes and meeting the brief.

After getting the expected result from it, ==I am using playwright MCP with Claude Code to extract the specifics of that design and turning/adding that to [design.md/UI.md](http://design.md/UI.md "http://design.md/UI.md")(or whatever you want to call it).==

From that point on life is easy - UI development wise.

Currently it goes like this:

1. I find a design from **dribble, behance** etc that meets my vision by at least 60-70%. Take the screenshot and **ask Gemini to re-create it**. It does it really good.
2. I keep iterating with Gemini till I achieve 100% of the brief.
3. I download the code, give Claude code access to it, and ask it to write a Design Guideline md file. I clearly tell it that the goal is that in future sessions AI agent will refer to this file and it should be able to create new cards, sections, pages etc that is exactly in line with the UI theme.
4. While working with Claude I use playwright mcp as needed.
5. If CC fails at some point, I copy the code, take screenshot and go back to Gemini.

My first UI design focused project felt like a wrestle with the agents. But now it feels easier. The key is to be specific, like use the words - cards, sections, H1 tag, etc. And use browser inspect element to quickly and change the css to get my expected result.