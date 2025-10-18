Source: https://youtu.be/jBcL-XrHqzY?si=SwD9X3xLItITj_ay
[[One Brief, 100 Assets - The Smart Prompt AI Workflow System]]
Marketing Against the Grain YouTube channel

Rory Flynn shares several key takeaways and tips for building highly scalable creative agents and workflows, primarily focusing on reverse engineering the creative process and mastering prompt structure:

### Key Takeaways and Principles

*   **Reverse Engineer the Medium:** The core idea is to **understand how the creative medium works** (e.g., a photo, video, or music) [1]. You must break it down and **reverse engineer it** to identify the building blocks and variables you can control [1]. This thinking applies to images, video, music, and system prompts for large language models (LLMs) [2].
*   **Focus on the Outcome First:** When building workflows, the process should be in reverse: **start with the end result** (a good output), determine the necessary prompt, and then reverse engineer the system prompt and inputs needed to generate that prompt repeatedly (e.g., 50 times) [3, 4].

### Prompting Tips: The Building Blocks Formula

The first step in creating photorealistic assets is controlling the "non-negotiables"—the core elements present in every image [5, 6]:

1.  **Structure the Prompt:** Start by controlling these main aspects [5]:
    *   **Shot or Photo Type:** The perspective or how the image is captured (e.g., close-up vs. drone shot) [5].
    *   **Subject and Action:** Who is in the image and what they are doing (the core idea) [5].
    *   **Environment:** Where the image takes place [5].
    *   **Color Scheme** [7].
    *   **Camera and Lenses:** Control the visual aesthetic by specifying different cameras (e.g., iPhone vs. Polaroid) or characteristics like film stock [7].
    *   **Mood and Emotion** (to set the "vibe") [7].
    *   **Lighting:** Every image has lighting, so control it to structure the output [6].
2.  **Isolate Variables for Iteration:** By isolating each of these variables in the prompt, you enable **faster iteration** because you know exactly what to change (e.g., if you don't like the lighting, you know where to go change it quickly) [6].
3.  **Start Simple:** Always give the condensed version of the prompt first. **Start simple and add complexity** ("starting simple and add versus starting complex and taking away") because troubleshooting complex, five-paragraph prompts is extremely difficult [8, 9].

### Building Creative Agents and Workflows

*   **Create a Scalable Formula:** Once the building blocks are defined, construct a **prompt formula** that acts like "Mad Libs" [10]. This allows you to scale creation and enable team members (even those without deep design or photography experience) to produce content [10].
*   **Leverage System Prompts:** Use a **system prompt** or "custom instruction" (like those used for custom GPTs) to guide the workflow, setting the operating structure or basic rules (e.g., "describe each article of clothing") [11, 12].
*   **Build a Batch Processing Engine:** The goal is to create an engine capable of **batch processing** (e.g., using modular prompting) [13, 14]. This allows you to input one item and generate 10, 40, 100, or a thousand variations (creating custom libraries of assets) [15, 16].
*   **Use Visual Brand Profiles:** To maintain consistency at scale, generate a **visual brand profile** by feeding an LLM about 20 existing images and asking it to extract a style guide for the image generator [12, 15].
*   **Embrace Branching Reality:** Recognize that one foundational image can become a base for thousands of variations and different media—including video, 3D assets, text, or code [17, 18].