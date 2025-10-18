Source: https://youtu.be/rQgaQ1p4tKU?si=c5jDubRd6gmJOEyT

The workflow utilized by PJ Ace to create viral AI video advertisements, such as the one for Origin Financial which achieved 2 million views [1], is a multi-step process that combines conceptual strategy, sophisticated prompting, asset generation, and final assembly [2].

This SOP outlines the detailed, end-to-end process to recreate this workflow, drawing heavily on the six phases described [2].

---

## Standard Operating Procedure (SOP): Viral AI Video Ad Creation Workflow

### Phase 1: Scripting and Concept Development

| Step | Action | Details & Tools | Source Citations |
| :--- | :--- | :--- | :--- |
| **1.1** | **Define Strategy** | Aim for "Super Bowl commercial" feel—ridiculous, high-energy comedy first, with the brand connection/messaging following afterward [3]. This mitigates customer pushback against AI-generated content [3]. | [3] |
| **1.2** | **Brainstorm Core Concepts** | Develop loose concepts focusing on elements known to drive virality: **Recognizable IP** (use public domain history, figures, or events like Pompeii or the Titanic) [4-6]; **Juxtaposition** (e.g., making a modern joke in a historical setting) [6, 7]; and **Internet Native** topics (trending memes or cultural references, like meme coins) [6]. | [4-7] |
| **1.3** | **Generate Script Ideas** | Use **ChatGPT** to get initial ideas for iconic moments throughout history that incorporate "bad advice" or related concepts, asking for potential lines for each scene [5, 7]. | [5, 7] |
| **1.4** | **Draft and Refine Script** | Write the full script, ensuring the story flows (e.g., chronologically) and leads to the final brand message [5]. Work in **Google Docs** for easy collaboration and client note-taking [8]. | [5, 8] |
| **1.5** | **Secure Approval** | If working for a client, pitch and secure approval on the script before proceeding [2]. | [2] |

### Phase 2: Generating the Shot List

| Step | Action | Details & Tools | Source Citations |
| :--- | :--- | :--- | :--- |
| **2.1** | **Transfer Script to LLM** | Upload the finalized script into **ChatGPT** or **Gemini** [8, 9]. | [8, 9] |
| **2.2** | **Generate Shot-Specific Prompts** | Instruct the LLM to break the script down into individual scenes and create a detailed image prompt for each required shot (e.g., Scene 1, Shot 1; Scene 1, Shot 2) [8, 10]. | [8, 10] |
| **2.3** | **Refine Prompt Structure** | Ensure the generated prompts follow a consistent, structured format (e.g., including details on character, setting, action, and desired cinematic style) [10]. | [10] |

### Phase 3: Image Generation (Creating Assets)

| Step | Action | Details & Tools | Source Citations |
| :--- | :--- | :--- | :--- |
| **3.1** | **Select Image Generation Tool** | Use a tool known for photo realism and iterative editing, such as **Rev (app.rev.com)** (preferred for its chat interface and realism) or **Nano Banana** (via Google’s AI suite, Freepik, or Open Router) [11-13]. | [11-13] |
| **3.2** | **Generate Initial Images** | Input the shot prompt (from Phase 2) into the chosen image generator. Generate multiple variations for each shot [11]. | [11, 14] |
| **3.3** | **Iterate and Refine Shots** | Use conversational instructions to refine the images. Ask the AI to adjust angles, movements, or focal points (e.g., "make this character a wide shot," "show the captain yelling at him") [15, 16]. Generate close-ups, wide shots, and various angles to ensure coverage for the scene [14, 15]. | [14-16] |
| **3.4** | **Ensure Character Consistency** | When generating new images featuring the same character, use conversational prompts or include the approved character image as a reference to maintain visual continuity across the ad [14]. | [14] |
| **3.5** | **(Optional) Use Advanced Reference Hacks** | For complex visual elements (e.g., if you need an object to be uncovered or featured), upload a reference image of the desired object (e.g., a Beanie Baby with its tag) alongside the text prompt. The AI can use this reference to "outpaint" or reveal the object with greater accuracy [17, 18]. | [17, 18] |

### Phase 4: Layout and Selection

| Step | Action | Details & Tools | Source Citations |
| :--- | :--- | :--- | :--- |
| **4.1** | **Download Assets** | Download all selected, high-quality images from the generator [14, 19]. | [14, 19] |
| **4.2** | **Create Master Board** | Lay out all generated images sequentially onto a visual board (e.g., a **Figma board**). Include alternative versions ("alt versions") for selection [2, 19]. | [2, 19] |
| **4.3** | **Make Selections** | Review the master board and select the best shots for animation. For complex projects, this involves a director making final "selects" [20]. | [20] |

### Phase 5: Video Generation (Animation)

| Step | Action | Details & Tools | Source Citations |
| :--- | :--- | :--- | :--- |
| **5.1** | **Select Animation Tool** | Use **V3 (Veo3/Google Flow)**, as it is currently the best model for generating clips where characters talk and for strong character performances [12, 21]. | [12, 21] |
| **5.2** | **Choose Generation Mode** | Use **Frames to Video** (Image to Video) mode, not Text to Video, as it offers much better control, quality, and precision when starting from a pre-generated image [21, 22]. | [21, 22] |
| **5.3** | **Generate Animation Prompts** | Take the image prompt (from Phase 2) and refine it for animation. Use **ChatGPT** to suggest specific camera movements (e.g., "pan to the ship," "dolly in," or simpler terms like "move camera left to end on the ship") [21, 23]. | [21, 23] |
| **5.4** | **Create Video Clips** | Upload the selected image as the starting frame to V3 [23]. Input the refined animation prompt and the necessary dialogue [21, 23]. | [21, 23] |
| **5.5** | **Optimize Cost (If using V3)** | Use **V3 fast mode** if available (e.g., via a subscription like Google Flow) as it is significantly cheaper and retains about 80% of the quality of full quality mode [24-26]. | [24-26] |

### Phase 6: Final Editing and Assembly

| Step    | Action                      | Details & Tools                                                                                                                                                                                                | Source Citations |
| :------ | :-------------------------- | :------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | :--------------- |
| **6.1** | **Select Editing Software** | Use a professional editor such as **Premiere Pro** or **Final Cut Pro** [17]. Free or simple alternatives include **CapCut** or **DaVinci Resolve** [17].                                                      | [17, 27]         |
| **6.2** | **Assemble Timeline**       | Place the generated clips sequentially into the editor's timeline. V3 clips already include sound effects and dialogue, simplifying the editing process [24, 27].                                              | [24, 27]         |
| **6.3** | **Add Music**               | Select and add a single, consistent music track (e.g., from Epidemic Sound or Story Blocks) across the entire ad, as AI generators often create a separate, inconsistent music track for each short clip [27]. | [27]             |
| **6.4** | **Final Export**            | Export the finished video for distribution on social media platforms [28].                                                                                                                                     | [28]             |