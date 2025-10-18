Source: https://www.reddit.com/r/n8n/s/SNLsvLDyGk
JSON: https://github.com/lucaswalter/n8n-ai-automations/blob/main/sora_2_ugc_ecommerce_video_generator.json


I built a UGC video ad generator that analyzes any product image, generates an ideal influencer to promote the product, writes multiple video scripts, and finally generates each video using Sora 2

I built this AI UGC video generator that takes in a single physical product image as input. It uses OpenAI's new Sora 2 video model combined with vision AI to analyze the product, generate an ideal influencer persona, write multiple UGC scripts, and produce professional-looking videos in seconds.

Here's a demo video of the whole automation in action: https://www.youtube.com/watch?v=-HnyKkP2K2c

And here's some of the output for a quick run I did of both Ridge Wallet and Function of Beauty Shampoo: https://drive.google.com/drive/u/0/folders/1m9ziBbywD8ufFTJH4haXb60kzSkAujxE

## Here's how the automation works

### 1. Process the initial product image that gets uploaded.

The workflow starts with a simple form trigger that accepts two inputs:

- A product image (any format, any dimensions)
- The product name for context To be used in the video scripts.

I convert the uploaded image to a base64 string immediately for flexibility when working with the Gemini API. 

### 2. Generate an ideal influencer persona to promote the product just uploaded.

I then use OpenAI's Vision API to analyze the product image and generates a detailed profile of the ideal influencer who should promote this product. The prompt acts as an expert casting director and consumer psychologist.

The AI creates a complete character profile including:

- Name, age, gender, and location
- Physical appearance and personality traits
- Lifestyle details and communication style
- Why they're the perfect advocate for this specific product

For the Ridge Wallet demo example, it generated a profile for an influencer named Marcus, a 32-year-old UI/UX designer from San Francisco who values minimalism and efficiency.

Here's the prompt I use for this:

```markdown
**// ROLE & GOAL //**
You are an expert Casting Director and Consumer Psychologist. Your entire focus is on understanding people. Your sole task is to analyze the product in the provided image and generate a single, highly-detailed profile of the ideal person to promote it in a User-Generated Content (UGC) ad.

The final output must ONLY be a description of this person. Do NOT create an ad script, ad concepts, or hooks. Your deliverable is a rich character profile that makes this person feel real, believable, and perfectly suited to be a trusted advocate for the product.

**// INPUT //**

Product Name: `{{ $node['form_trigger'].json['Product Name'] }}`

**// REQUIRED OUTPUT STRUCTURE //**
Please generate the persona profile using the following five-part structure. Be as descriptive and specific as possible within each section.

**I. Core Identity**
* **Name:**
* **Age:** (Provide a specific age, not a range)
* **Sex/Gender:**
* **Location:** (e.g., "A trendy suburb of a major tech city like Austin," "A small, artsy town in the Pacific Northwest")
* **Occupation:** (Be specific. e.g., "Pediatric Nurse," "Freelance Graphic Designer," "High School Chemistry Teacher," "Manages a local coffee shop")

**II. Physical Appearance & Personal Style (The "Look")**
* **General Appearance:** Describe their face, build, and overall physical presence. What is the first impression they give off?
* **Hair:** Color, style, and typical state (e.g., "Effortless, shoulder-length blonde hair, often tied back in a messy bun," "A sharp, well-maintained short haircut").
* **Clothing Aesthetic:** What is their go-to style? Use descriptive labels. (e.g., "Comfort-first athleisure," "Curated vintage and thrifted pieces," "Modern minimalist with neutral tones," "Practical workwear like Carhartt and denim").
* **Signature Details:** Are there any small, defining features? (e.g., "Always wears a simple gold necklace," "Has a friendly sprinkle of freckles across their nose," "Wears distinctive, thick-rimmed glasses").

**III. Personality & Communication (The "Vibe")**
* **Key Personality Traits:** List 5-7 core adjectives that define them (e.g., Pragmatic, witty, nurturing, resourceful, slightly introverted, highly observant).
* **Demeanor & Energy Level:** How do they carry themselves and interact with the world? (e.g., "Calm and deliberate; they think before they speak," "High-energy and bubbly, but not in an annoying way," "Down-to-earth and very approachable").
* **Communication Style:** How do they talk? (e.g., "Speaks clearly and concisely, like a trusted expert," "Tells stories with a dry sense of humor," "Talks like a close friend giving you honest advice, uses 'you guys' a lot").

**IV. Lifestyle & Worldview (The "Context")**
* **Hobbies & Interests:** What do they do in their free time? (e.g., "Listens to true-crime podcasts, tends to an impressive collection of houseplants, weekend hiking").
* **Values & Priorities:** What is most important to them in life? (e.g., "Values efficiency and finding 'the best way' to do things," "Prioritizes work-life balance and mental well-being," "Believes in buying fewer, higher-quality items").
* **Daily Frustrations / Pain Points:** What are the small, recurring annoyances in their life? (This should subtly connect to the product's category without mentioning the product itself). (e.g., "Hates feeling disorganized," "Is always looking for ways to save 10 minutes in their morning routine," "Gets overwhelmed by clutter").
* **Home Environment:** What does their personal space look like? (e.g., "Clean, bright, and organized with IKEA and West Elm furniture," "Cozy, a bit cluttered, with lots of books and warm lighting").

**V. The "Why": Persona Justification**
* **Core Credibility:** In one or two sentences, explain the single most important reason why an audience would instantly trust *this specific person's* opinion on this product. (e.g., "As a busy nurse, her recommendation for anything related to convenience and self-care feels earned and authentic," or "His obsession with product design and efficiency makes him a credible source for any gadget he endorses.")
```

### 3. Write the UGC video ad scripts.

Once I have this profile generated, I then use Gemini 2.5 pro to write multiple 12-second UGC video scripts which is the limit of video length that Sora 2 has right now. Since this is going to be a UGTV Descript, most of the prompting here is setting up the shot and aesthetic to come from just a handheld iPhone video of our persona talking into the camera with the product in hand.

Key elements of the script generation:

- Creates 3 different video approaches (analytical first impression, casual recommendation, etc.)
- Includes frame-by-frame details and camera positions
- Focuses on authentic, shaky-hands aesthetic
- Avoids polished production elements like tripods or graphics

Here's the prompt I use for writing the scripts. This can be adjusted or changed for whatever video style you're going after. 

```markdown
Master Prompt: Raw 12-Second UGC Video Scripts (Enhanced Edition)
You are an expert at creating authentic UGC video scripts that look like someone just grabbed their iPhone and hit record—shaky hands, natural movement, zero production value. No text overlays. No polish. Just real.
Your goal: Create exactly 12-second video scripts with frame-by-frame detail that feel like genuine content someone would post, not manufactured ads.

You will be provided with an image that includes a reference to the product, but the entire ad should be a UGC-style (User Generated Content) video that gets created and scripted for. The first frame is going to be just the product, but you need to change away and then go into the rest of the video.

The Raw iPhone Aesthetic
What we WANT:

Handheld shakiness and natural camera movement
Phone shifting as they talk/gesture with their hands
Camera readjusting mid-video (zooming in closer, tilting, refocusing)
One-handed filming while using product with the other hand
Natural bobbing/swaying as they move or talk
Filming wherever they actually are (messy room, car, bathroom mirror, kitchen counter)
Real lighting (window light, lamp, overhead—not "good" lighting)
Authentic imperfections (finger briefly covering lens, focus hunting, unexpected background moments)

What we AVOID:

Tripods or stable surfaces (no locked-down shots)
Text overlays or on-screen graphics (NONE—let the talking do the work)
Perfect framing that stays consistent
Professional transitions or editing
Clean, styled backgrounds
Multiple takes stitched together feeling
Scripted-sounding delivery or brand speak

The 12-Second Structure (Loose)
0-2 seconds:
Start talking/showing immediately—like mid-conversation
Camera might still be adjusting as they find the angle
Hook them with a relatable moment or immediate product reveal
2-9 seconds:
Show the product in action while continuing to talk naturally
Camera might move closer, pull back, or shift as they demonstrate
This is where the main demo/benefit happens organically
9-12 seconds:
Wrap up thought while product is still visible
Natural ending—could trail off, quick recommendation, or casual sign-off
Dialogue must finish by the 12-second mark

Critical: NO Invented Details

Only use the exact Product Name provided
Only reference what's visible in the Product Image
Only use the Creator Profile details given
Do not create slogans, brand messaging, or fake details
Stay true to what the product actually does based on the image

Your Inputs
Product Image: First image in this conversation
Creator Profile:
{{ $node['set_model_details'].json.prompt }}
Product Name:
{{ $node['form_trigger'].json['Product Name'] }}

Output: 3 Natural Scripts
Three different authentic approaches:

Excited Discovery - Just found it, have to share
Casual Recommendation - Talking to camera like a friend
In-the-Moment Demo - Showing while using it

Format for each script:
SCRIPT [#]: [Simple angle in 3-5 words]
The energy: [One specific line - excited? Chill? Matter-of-fact? Caffeinated? Half-awake?]
What they say to camera (with timestamps):
[0:00-0:02] "[Opening line - 3-5 words, mid-thought energy]"
[0:02-0:09] "[Main talking section - 20-25 words total. Include natural speech patterns like 'like,' 'literally,' 'I don't know,' pauses, self-corrections. Sound conversational, not rehearsed.]"
[0:09-0:12] "[Closing thought - 3-5 words. Must complete by 12-second mark. Can trail off naturally.]"
Shot-by-Shot Breakdown:
SECOND 0-1:

Camera position: [Ex: "Phone held at chest height, slight downward angle, wobbling as they walk"]
Camera movement: [Ex: "Shaky, moving left as they gesture with free hand"]
What's in frame: [Ex: "Their face fills 60% of frame, messy bedroom visible behind, lamp in background"]
Lighting: [Ex: "Natural window light from right side, creating slight shadow on left cheek"]
Creator action: [Ex: "Walking into frame mid-sentence, looking slightly off-camera then at lens"]
Product visibility: [Ex: "Product not visible yet / Product visible in left hand, partially out of frame"]
Audio cue: [The actual first words being said]

SECOND 1-2:

Camera position: [Ex: "Still chest height, now more centered as they stop moving"]
Camera movement: [Ex: "Steadying slightly but still has natural hand shake"]
What's in frame: [Ex: "Face and shoulders visible, background shows unmade bed"]
Creator action: [Ex: "Reaching off-screen to grab product, eyes following their hand"]
Product visibility: [Ex: "Product entering frame from bottom right"]
Audio cue: [What they're saying during this second]

SECOND 2-3:

Camera position: [Ex: "Pulling back slightly to waist-level to show more"]
Camera movement: [Ex: "Slight tilt downward, adjusting focus"]
What's in frame: [Ex: "Upper body now visible, product held at chest level"]
Focus point: [Ex: "Camera refocusing from face to product"]
Creator action: [Ex: "Holding product up with both hands (phone now propped/gripped awkwardly)"]
Product visibility: [Ex: "Product front-facing, label clearly visible, natural hand positioning"]
Audio cue: [What they're saying]

SECOND 3-4:

Camera position: [Ex: "Zooming in slightly (digital zoom), frame getting tighter"]
Camera movement: [Ex: "Subtle shake as they demonstrate with one hand"]
What's in frame: [Ex: "Product and hands take up 70% of frame, face still partially visible top of frame"]
Creator action: [Ex: "Opening product cap with thumb while talking"]
Product interaction: [Ex: "Twisting cap, showing interior/applicator"]
Audio cue: [What they're saying]

SECOND 4-5:

Camera position: [Ex: "Shifting angle right as they move product"]
Camera movement: [Ex: "Following their hand movement, losing focus briefly"]
What's in frame: [Ex: "Closer shot of product in use, background blurred"]
Creator action: [Ex: "Applying product to face/hand/surface naturally"]
Product interaction: [Ex: "Dispensing product, showing texture/consistency"]
Physical details: [Ex: "Product texture visible, their expression reacting to feel/smell"]
Audio cue: [What they're saying, might include natural pause or 'um']

SECOND 5-6:

Camera position: [Ex: "Pulling back to shoulder height"]
Camera movement: [Ex: "Readjusting frame, slight pan left"]
What's in frame: [Ex: "Face and product both visible, more balanced composition"]
Creator action: [Ex: "Rubbing product in, looking at camera while demonstrating"]
Product visibility: [Ex: "Product still in frame on counter/hand, showing before/after"]
Audio cue: [What they're saying]

SECOND 6-7:

Camera position: [Ex: "Stable at eye level (relatively)"]
Camera movement: [Ex: "Natural sway as they shift weight, still handheld"]
What's in frame: [Ex: "Mostly face, product visible in periphery"]
Creator action: [Ex: "Touching face/area where product applied, showing result"]
Background activity: [Ex: "Pet walking by / roommate door visible opening / car passing by window"]
Audio cue: [What they're saying]

SECOND 7-8:

Camera position: [Ex: "Tilting down to show product placement"]
Camera movement: [Ex: "Quick pan down then back up to face"]
What's in frame: [Ex: "Product on counter/vanity, their hand reaching for it"]
Creator action: [Ex: "Holding product up one more time, pointing to specific feature"]
Product highlight: [Ex: "Finger tapping on label/size/specific element"]
Audio cue: [What they're saying]

SECOND 8-9:

Camera position: [Ex: "Back to face level, slightly closer than before"]
Camera movement: [Ex: "Wobbling as they emphasize point with hand gesture"]
What's in frame: [Ex: "Face takes up most of frame, product visible bottom right"]
Creator action: [Ex: "Nodding while talking, genuine expression"]
Product visibility: [Ex: "Product remains in shot naturally, not forced"]
Audio cue: [What they're saying, building to conclusion]

SECOND 9-10:

Camera position: [Ex: "Pulling back to show full setup"]
Camera movement: [Ex: "Slight drop in angle as they relax grip"]
What's in frame: [Ex: "Upper body and product together, casual end stance"]
Creator action: [Ex: "Shrugging, smiling, casual body language"]
Product visibility: [Ex: "Product sitting on counter/still in hand casually"]
Audio cue: [Final words beginning]

SECOND 10-11:

Camera position: [Ex: "Steady-ish at chest height"]
Camera movement: [Ex: "Minimal movement, winding down"]
What's in frame: [Ex: "Face and product both clearly visible, relaxed framing"]
Creator action: [Ex: "Looking at product then back at camera, finishing thought"]
Product visibility: [Ex: "Last clear view of product and packaging"]
Audio cue: [Final words]

SECOND 11-12:

Camera position: [Ex: "Same level, might drift slightly"]
Camera movement: [Ex: "Natural settling, possibly starting to lower phone"]
What's in frame: [Ex: "Face, partial product view, casual ending"]
Creator action: [Ex: "Small wave / half-smile / looking away naturally"]
How it ends: [Ex: "Cuts off mid-movement" / "Fade as they lower phone" / "Abrupt stop"]
Final audio: [Last word/sound trails off naturally]

Overall Technical Details:

Phone orientation: [Vertical/horizontal?]
Filming method: [Selfie mode facing them? Back camera in mirror? Someone else holding phone? Propped on stack of books?]
Dominant hand: [Which hand holds phone vs. product?]
Location specifics: [What room? Time of day based on lighting? Any notable background elements?]
Audio environment: [Echo from bathroom? Quiet bedroom? Background TV/music? Street noise?]

Enhanced Authenticity Guidelines
Verbal Authenticity:

Use filler words: "like," "literally," "so," "I mean," "honestly"
Include natural pauses: "It's just... really good"
Self-corrections: "It's really—well actually it's more like..."
Conversational fragments: "Yeah so this thing..."
Regional speech patterns if relevant to creator profile

Visual Authenticity Markers:

Finger briefly covering part of lens
Camera focus hunting between face and product
Slight overexposure from window light
Background "real life" moments (pet, person, notification pop-up)
Natural product handling (not perfect grip, repositioning)

Timing Authenticity:

Slight rushing at the end to fit in last thought
Natural breath pauses
Talking speed varies (faster when excited, slower when showing detail)
Might start sentence at 11 seconds that gets cut at 12

Remember: Every second matters. The more specific the shot breakdown, the more authentic the final video feels. If a detail seems too polished, make it messier. No text overlays ever. All dialogue must finish by the 12-second mark (can trail off naturally).
```

### 4. Generate the first video frame featuring our product to get passed into the store to API

Sora 2's API requires that any reference image used as the first frame must match the exact dimensions of the output video. Since most product photos aren't in vertical video format, I need to process them.

In this part of the workflow:

- I use Nano Banana to resize the product image to fit vertical video dimensions / aspect ratio
- Prompt it to maintains the original product's proportions and visual elements
- Extends or crops the background naturally to fill the new canvas
- Ensures the final image is exactly 720x1280 pixels to match the video output

This step is crucial because Sora 2 uses the reference image as the literal first frame of the video before transitioning to the UGC content. Without doing this, you're going to get an error working with a Sora2 API, specifying that the provided image reference needs to be the same dimensions as the video you're asking for. 

### 5. Generate each video with Sora 2 API

For each script generated earlier, I then loop through and creates individual videos using OpenAI's Sora 2 API. This involves:

- Passing the script as the prompt
- Including the processed product image as the reference frame
- Specifying 12-second duration and `720x1280` dimensions

Since video generation is compute-intensive, Sora 2 doesn't return videos immediately. Instead, it returns a job ID that will get used for polling. 

I then take that ID, wait a few seconds, and then make another request into the endpoint to fetch the status of the current video getting processed. It's going to return something to me like "queued” “processing" or "completed". I'm going to keep retrying this until we get the "completed" status back and then finally upload the video into Google Drive. 

### Sora 2 Pricing and Limitations

Sora 2 pricing is currently:

- Standard Sora 2: $0.10 per second ($1.20 for a 12-second video)
- Sora 2 Pro: $0.30 per second ($3.60 for a 12-second video)

Some limitations to be aware of:

- No human faces allowed (even AI-generated ones)
- No real people, copyrighted characters, or copyrighted music
- Reference images must match exact video dimensions
- Maximum video length is currently 12 seconds

The big one to note here is that no real people or faces can appear in this. That's why I'm taking the profile of the influencer and the description of the influencer once and passing it into the Sora 2 prompt instead of including that person in the first reference image. We'll see if this changes as time goes on, but this is the best approach I was able to set up right now working with their API. 

## Workflow Link + Other Resources

- YouTube video that walks through this workflow step-by-step: https://www.youtube.com/watch?v=-HnyKkP2K2c
- The full n8n workflow, which you can copy and paste directly into your instance, is on GitHub here: https://github.com/lucaswalter/n8n-ai-automations/blob/main/sora_2_ugc_ecommerce_video_generator.json