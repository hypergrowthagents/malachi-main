## Quick Pitch

Augment Growth supercharges you with the knowledge and capabilities of a growth marketing team across analytics, creative, and strategy, so you can scale without the overhead. Augment unlocks channel performance using AI agents that are fine tuned for growth.

## Description 

Augment growth is a discrete set of AI systems that enable anyone to scale growth marketing without the overhead.

At the core of it is the individual, the conductor, the generalist, who decides what they want to do next. They are enabled by AI agents that help augment needs in specialized areas, so that one person can seamlessly move between many disciplines in a fluid manner.

Augment growth is like having a team of 10 people working for you - monitoring analytics and campaigns, optimizing campaigns, building creative, proposing and conducting tests, and building strategies to deploy next.

Now startups can afford to tap into the kind of custom tooling that previously only enterprises could afford to build, and run it with a single curious and motivated person.

I want to start by automating capabilities of:
1. The growth/performance marketer.
2. Then the designer
3. Then the analyst
4. Then the CMO

Augment leaves a robust paper trail of every analysis and recommendation, making it easy to track why previous decisions were made and how those changes performed.

## How does it work?

1. Connect you ad account and augment will begin to pull in data and run a channel and campaign audit
2. Augment will identify strengths and weak areas for your channel, and start to build a structured testing plan aimed at improving performance
3. The user will fill out a form/questionnaire to set metric goals and learning objectives
4. Augment analysis will put together a report of the top opportunities, challenges, and specific recommendations to implement
5. User will approve which recommendations to move ahead with, which then adds those to a plan and get tracked in the main dashboard
6. Augment will get to work, making changes based upon the most recent recommendations

Across all of this, the human in the loop is approving changes, kicking off requests and work streams, and updating the goals and inputs as we go.

## Pricing:

Maybe we have a base level starter package, like:

- $5k for the first $50k in managed spend (10%)
- Then 5% for the next $450k (up to $500k total)
- Then 3% for the next $500k (up to $1m)
- Then 1-2% after that, low enough where it makes sense to scale it

## Core Features
1. Channel and campaign audit + recommendation engine
	1. Analyses performance and suggests optimizations
2. Test planner and execution tool - detailed test plans, prioritized by impact
3. Campaign builder - builds and launches campaign changes via API (manually at first or via bulk editor)
4. Automated dashboard and performance alerts - real time view of performance and KPI trends

## Feature Expansions
#### Early Expansions
- Ad creative production and testing - ability to generate and deploy new creative for campaigns
- Zero-to-one initial channel testing - ability to plan out and execute channel tests without historical data
- Test tagging and follow up - automated analysis of how tests performed and if hypothesis is validated
- Expand supported channels - move from Meta to Google to TikTok, etc.

#### Future Expansions

1. Landing pages - CRO/optimize existing pages; programmatically create new ones that are aligned with the campaign/creative messaging 
2. Incrementality analysis - systematically set up and run incrementality tests using platform data

## Deprioritized Features

Need to keep things simpler in the early days to have a chance of this working and staying focused.

1. Internal database connections- while having internal 1st party data is the holy grail, it’s also fraught with issues. Data privacy, setup friction, resource issues, etc. Every data source is bespoke, so major work is required to standardize the data. We’ll need to have an AI-driven way to streamline this implementation ready before jumping in to try and solve it

## Challenges & What Could Go Wrong

The below is not an exhaustive list, but some of the current things that concern me or I want to prioritize solutions for:

1. Worried that it might get too technical too quickly and it becomes a blocker to getting a viable v1 out without a technical leader/operator. For example, building automated campaigns with the ad platform APIs.
2. A bit worried about the human-in-the-loop aspect being a challenge to scale early on.
	1. I could probably support the first 4 clients on my own, but then I’d need to bring someone on to manage additional ones and would need to pay them. So I’d need to have a lot of automations in place to keep the costs mitigated at a pretty early point in the journey.
	2. Once the platform gets good enough, the human in the loop on the AG side is likely much more minimal or you could have one person who oversees many client’s operations.
3. The ad platforms are highly invested in trying to use AI to solve a lot of this themselves. For example, Meta is trying to automate creative and targeting with their new AI capabilities. 
	1. But can they actually work or integrate with the types of tools necessary to do this effectively? I don’t think they can or will because of their competitive position and how diverse their audience is. 
## Resource Needs

In the early days, we can build up to this with limited resourcing, largely leaning on Malachi to plug any gaps and/or additional fractional support as one off needs demand. We have the ability to manually implement some of these workflows early on; for example, implementing campaign change recommendations. In fact, we want to have a human doing the implementation to ensure the system is operating effectively and being able to make frequent changes.

**Malachi can probably handle the first 4 clients solo, before expanding.**

To get a really sophisticated system in place, we are likely going to want to bring on some fractional or even full time resourcing to support this at some point past the early stages, in order to attract larger scale companies.

Early roles/needs may include:

1. Technical data implementation engineer: someone who is comfortable setting up the right data pipes and AI agent workflows; setting up ad platform automations 
2. Analyst: developing more sophisticated models and dialing in the analysis
3. Performance marketing manager: overseeing the campaign changes and automations, ensuring the system is operating well and overriding changes if they aren’t performing 
4. Creative producer: reviewing and improving the creative outputs, dialing in the specs and AI workflows

## Malachi Additional Thoughts

- I like that it can start out being augmented by human involvement. And that it supports the brand image. I think there’s a real potential to build trust with humans + AI and slowly hand over the keys over time vs. trying to build a straight software or agentic solution.
- I like that it’s easily comparable to existing agency and performance marketing pricing structures (e.g. % of media fees). Less confusing than the modular pricing of Morpheus.
- I like that the monetization scales nicely with this approach vs. the Morpheus vision (Malachi + AI agents for growth ops).
- I like that agencies will have a hard time competing with the cost profile of this with their headcount/overhead.
- I like that it allows for expansion into other areas of growth quite easily, using paid advertising as a beach head.
- I like that this seems very unlikely that the main LLMs will natively offer something like this, or that mass market tools will build out the depth of integrations and workflows necessary to encroach. 

# 9/30 Notes
- Derek Steer told me in my network interview with him that the differentiation of the company doesn't have to be with the product itself necessarily. It can be with the identity. He used PostHog as a reference for this. He just really got their market of developers and gave them a message that this was especially for them, and his point was that one angle I should consider is who my true audience really is. Who are the people who are just going to 1000x get it and want that new version of this? It doesn't necessarily even have to be a better product or cheaper, although it could be, and I think that really resonated with me. I'm wondering for Augment if you know we essentially could lean into the idea of customer acquisition being reborn for an AI-first age and paint a picture of what that looks like and why it's better. How does it generate better, faster, more scalable results so that somebody who's already searching for an AI-native solution to this, has essentially all the arguments available right in front of them. That it's here, it's available to them. They can probably save money and get better results from this and supercharge their growth in a way they never would've had access to before with the previous methods of doing this via internal hires or traditional agencies. 
- Derek also liked the idea of the name Augment Growth and said he really liked the concept of augmented intelligence, but that stood out to him. That may be a way for us to bake that into the positioning in a way that makes it feel a little more upscale. You're augmenting your intelligence and capabilities.
- The question I need to answer is, "What does the customer get with the AI-driven customer acquisition growth that they weren't getting before?" Some of the things that come to mind for the AI benefits are:
	- Less expensive
	- Faster, richer insights (daily)
	- Scales creative production
	- Faster experimentation learnings
	- Weekly audits
- Augment gives you the best of both worlds: human steering and validation alongside AI speed, specialization, and efficiency. 
- AI prosumer companies are likely going to be heavy on Google Search and lighter on meta and TikTok. That's not a reason not to focus on meta and TikTok, but I also wonder if figuring out Google Search might be an effective place to start because I don't have to solve anything other than the ad copy scaling equation right now before I get into other types of video UGC video creation types of flows. This is something we should think deeply about. But maybe starting with Google Search instead of meta and then you could easily extend to performance max and meta as a next step. That might align me to AI companies a little bit more closely. Either that, or we could try to knock out Google and Meta at the same time. It just seems like we need to focus on them sequentially. 
- My initial version of "Who Augment Growth Should Be Targeted For?" is:
	- We could set our identity to be technology leaders or leaders at technology companies who want to do growth differently. Who want to tap into the speed and capabilities that AI offers and find ways to outmaneuver and outcompete their competition. 
	- For innovative start-ups. It's for people who are used to wearing many hats and taking on a lot of responsibility. It's for people who are tired of the traditional way of doing things. It's for people who are already using AI in their daily workflows and understand the value and limitations of it. 
- Philosophy statement: I want to include a philosophy for why we exist prominently in the pitch, because I believe it will help with attracting the right ICP and explain the value props better than cutting right to the points. 
	- Rough draft of philosophy: We believe that incredible things happen when you combine the humans and AI together. AI brings the raw intelligence and speed, allowing us to scale farther and faster than ever before. Humans provide the guidance and wisdom to ensure the strategy is sound and the execution stays on track. Augment strikes the balance of leveraging both to their fullest potential, so you get maximum impact.