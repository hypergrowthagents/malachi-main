Source: https://www.reddit.com/r/n8n/s/liCyLz5ZE6

High-quality video ads are expensive and slow to produce. You need a creative director, a film crew, and an editor. But what if you could automate the entire production pipeline with n8n?

I've been experimenting with the new video generation models and built a workflow that does exactly that. It takes a single product photo and a short description, and in minutes, it outputs a cinematic, ready-to-post video ad.

Here’s what this "AI Film Studio" workflow does:

•	⁠Takes a Photo & a Vibe: You start with a simple form to upload a product photo, select an aspect ratio, and describe the desired mood.
•	⁠Deeply Analyzes the Product: It uses GPT-4o with a custom YAML prompt to analyze the photo's visual DNA—extracting exact color hex codes, materials, shapes, and textures while completely ignoring the background.
•	⁠Writes a Cinematic Storyboard: It acts as an "AI Creative Director" (using Gemini 2.5 Pro) to write a second-by-second shot list, complete with camera movements, lighting cues, and sound design.
•	⁠Generates a Pro-Level Video Ad: It feeds that detailed storyboard into Sora 2 (via the Kie.ai API) to generate a stunning, 12-second cinematic video.
•	⁠Organizes and Logs Everything: It automatically saves the final video to a dedicated Google Drive folder and logs all the project details into a Baserow database for 

How It Works: The Technical Breakdown

This workflow automates the roles of an entire production team.

1.	⁠Form Trigger: The process starts when a user submits the n8n Form Trigger with their photo and creative brief.
2.	⁠GPT-4o Visual Analysis: The image is sent to OpenAI's Analyze Image node. The key here is a structured YAML prompt that forces the AI to output a detailed, machine-readable block of visual data about the product itself.
3.	⁠Gemini 2.5 Pro as Creative Director: The structured visual data, along with the user's description, is passed to an AI agent node. Its job is to generate a cinematic timeline prompt following the Sora 2 structure:
	⁠•	⁠[0–3s] Hook: A dynamic opening shot.
	⁠•	⁠[3–6s] Context: The story or environment reveal.
	⁠•	⁠[6–9s] Climax: The main action or emotional moment.
	⁠•	⁠[9–12s] Resolution: A closing visual with a tagline.
4.	⁠Sora 2 Video Generation: An Execute Workflow node calls a separate workflow that uses the HTTP Request node to send the prompt, image link, and aspect ratio to the Kie.ai API, which handles the Sora 2 generation.
5.	⁠File Management & Logging: Once the video is rendered, another HTTP Request node downloads it. It's then uploaded to a final "Product Videos" folder in Google Drive, and all metadata is logged in a Baserow database.

The result? What starts as a simple photo becomes a fully-produced, ready-to-post video ad, complete with consistent branding and visual storytelling—all orchestrated by n8n.

I’ve created a full video walkthrough that dives deep into this entire process, including the specific YAML and timeline prompts I used. The complete workflow JSON is available via the links in the description.

Full Video Walkthrough: https://youtu.be/sacaHOgmXc0

Download Workflow JSON: https://github.com/Alex-safari/Hollywood-Quality-UGC-Ad-Generator