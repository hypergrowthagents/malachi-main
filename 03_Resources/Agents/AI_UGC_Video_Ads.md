# v2 Revised Flow

# **AI UGC Video Ads – MAVAN v2 (HiggsField → Veo/Flow → ElevenLabs)**

**Purpose:** A fast, repeatable, credit‑efficient pipeline for producing persona‑aligned UGC video ads (8s–30s) that meet brand and platform requirements.

---

## **0\) Principles (read first)**

* **Ship short first:** Master **8‑second** cuts before 20–30s edits.

* **Consistency \> novelty:** Lock persona, wardrobe, lighting, and voice via **HiggsField template \+ Veo/Flow “folder”** before scaling.

* **Credit efficiency:** Generate **one great talk clip**, then **clone VO in ElevenLabs** for product B‑roll rather than regenerating video.

* **Compliance reality:** AI product labels are unreliable. Use **real product shots** (PDP, lifestyle, or client-supplied) on B‑roll to avoid typos and violations.

* **One concept at a time:** Ask ChatGPT for **one** sharp concept, iterate hard, then branch.

---

## **1\) Stack & Costs (operational)**

* **HiggsField Soul** (image generation): start from a template scene for lighting/composition; \~**2 image credits** per still.

* **Google Veo / Flow** (video generation): animate the stills; target **\~20 credits per 8s gen**; use **Veo folders** for continuity.

* **ElevenLabs** (voice): clone the voice from the best 8s Veo clip; use for narration over B‑roll.

* **Editors:** **CapCut** (default for non‑editors) or **Premiere Pro** (advanced).

* **Captioning:** **FireCut.ai** (Premiere plugin) or CapCut auto‑captions.

* **Music:** Artlist.io (ensure license compliance).

* **Model:** ChatGPT **5** for strategy, scripts, chunking, and prompts.

Tip: For non‑editors, choose **CapCut**. You’ll get 80% of the value with 20% of the effort.

---

## **2\) Roles & RACI (per client)**

* **Creative Operator (Jake):** owns generation in HiggsField/Veo, selects takes, provides assembly \+ VO plan.

* **Client Lead (Malachi):** owns brief, ICP/assets intake, approvals, QA, client delivery.

* **Editor (lightweight):** stitches 8s clips, applies VO, B‑roll, captions, music (CapCut default).

---

## **3\) Foldering & Naming (do this before anything)**

**Drive › Clients › \*\*\*\* › AI‑UGC › 20YY‑MM‑Project**

* `01_Brief` (ICP, brand book, OK words/claims)

* `02_Scripts` (vN concepts, chunked 8s lines)

* `03_Assets` (logos, real product shots, PDP grabs)

* `04_HiggsField_Stills` (01\_heroA\_v1.png …)

* `05_Veo_Clips` (01A\_talk\_v1.mp4 …)

* `06_Audio` (EL\_voice\_clones, SFX)

* `07_Edits` (v1, v2, alt hooks/CTAs)

* `08_Deliverables` (finals \+ captions)

**Veo/Flow folders:** per **character \+ concept** (e.g., `FF_Exec_Female_A_Office_v1`). Keep all related generations inside.

---

## **4\) End‑to‑End Workflow**

### **A) Brief & Inputs (15–30 min)**

1. Collect: **ICP**, brand guide, do/don’t claims, top pain points, PDP links, real product shots.

2. **ChatGPT Role Prompt** (paste once per client):

*“You are a creative strategist with 15+ years making performance ad creative for paid social. Your job depends on delivering a winning UGC video concept. Be concise, conversion‑first, and ruthless about clarity.”*

3. **Ingest ICP \+ Site**:

   * “Ingest this ICP (paste/upload). Summarize personas, triggers, disqualifiers.”

   * “Scan the site (paste key URLs). Map features → concrete outcomes \+ proof devices.”

### **B) Concept → Script (20–40 min)**

4. **Ask for ONE concept** (not a list):

“Give me **one** 8–20s UGC concept for Persona X. Start with a visceral before/after. Make it selfie‑vlog. Write the exact spoken line.”

5. **Punch up tone:**

“It’s mid. 10x the hook. Your job depends on this. Keep it human, 6th‑grade clarity.”

6. **Vlogify:**

“Rewrite as natural selfie‑vlog. Add tiny hesitations (‘okay, real talk…’).”

7. **Chunk to 8s lines:**

“Split the script into **8‑second** chunks. Each chunk: ≤25 words, ends on a natural beat, includes a bracketed stage note \[action\]. Output as numbered list.”

### **C) Cast & Compose in HiggsField (15–30 min)**

8. **Choose a Soul template** that matches scene (lighting \> face). Click **Recreate** and edit nouns/pronouns for persona.

9. **Prompt pattern (structured):**

`{persona}: {age range}, {hair/skin/wardrobe vibe}, {mood}.`  
`{camera}: handheld selfie iPhone, slight shake, 24–28mm.`  
`{scene}: {office sidewalk / desk / kitchen island}, {time of day}, {lighting description}.`  
`{composition}: centered chest‑up, eye‑level, room light practicals.`  
`{consistency tags}: keep hairstyle, blazer color, backdrop elements.`

10.   
    Generate **2–3 hero stills** (2 credits each). Export PNGs to `04_HiggsField_Stills`.

### **D) Animate in Veo/Flow (30–60 min)**

11. Create **Veo folder** for the character/concept. Import the hero still.

12. For each **8s chunk**:

* Paste the **spoken line** exactly.

* Add the stage note to guide motion/eye‑line.

* **FAST mode**, generate **4 outputs**.

* Pick best **for realism, lip‑sync, persona fit**.

13. If multiple chunks are same scene, stay inside the **same Veo folder** to preserve voice/looks.

### **E) VO Strategy (save credits)**

14. From the best “talking” Veo clip, **clone voice in ElevenLabs** (8s is enough).

15. For chunks you plan to cover with **product B‑roll**, use **ElevenLabs VO** instead of generating new Veo talkers.

16. Keep a single **VO waveform** per ad (normalize loudness).

### **F) B‑roll & Labels (compliance)**

17. Use **real product shots** (client assets or PDP grabs) for any label‑visible moments.

18. If you must use AI product renders, **mask/fix labels** in Photoshop/Canva before animating. Prefer not to.

### **G) Edit, Captions, Music (30–45 min in CapCut)**

19. For longer format videos (\> 8s), drop 8s clips on timeline; **cover seams** with B‑roll under cloned VO.

20. Auto‑captions (CapCut/FireCut). Clean punctuation, add **keyword emphasis** sparingly.

21. Add light music (no vocals competing with VO). Duck music −10 to −15 dB under speech.

22. Target runtimes: **8s**, **15s**, **20s/30s** versions.

23. **Aspect ratio:** 9:16 default; export 1:1 / 16:9 variants as needed by media plan.

### **H) QA & Delivery (10–20 min)**

24. **QA checklist:**

* Lip‑sync believable; no uncanny blinks.

* Brand voice on‑tone; no prohibited claims.

* Labels clean/real. Disclaimers present if required.

* Captions accurate (no hallucinated brand terms).

* Loudness balanced; music not fighting VO.

* Filename & slate correct.

25. Export **v1 \+ alt hooks/CTAs**. Move to `08_Deliverables`. Send preview to client with 1‑click feedback form.

---

## **5\) Decision Paths (cheat sheet)**

* **Template vs Scratch (HiggsField):**

  * *Template* for office/desk/street normcore scenes (max realism, fastest).

  * *Scratch* for comedy/novel set pieces (podcaster rig, TED stage, etc.).

* **Talker vs VO‑over‑B‑roll:**

  * Use **talker** for hook(s) and 1 proof moment.

  * Use **VO‑over‑B‑roll** for steps, features, pricing, disclaimers.

* **Voice source:**

  * Use **Veo native** for the first hero line.

  * **Clone in ElevenLabs** for all additional narration to cut costs \+ improve clarity.

---

## **6\) Prompts (copy/paste)**

**Role setup (once per client)**

“You are a creative strategist with 15+ years making high‑performing paid social ads. Your job depends on delivering a winner. Be blunt, conversion‑first.”

**Ingest ICP**

“Ingest this ICP PDF. Return a 1‑page sheet: persona summary, priority pains, outcomes, blocked claims, must‑say language.”

**Site scan**

“Scan these pages (paste URLs). Map feature → benefit → proof. Flag risky claims.”

**One‑concept request**

“Give me **one** 8–15s selfie‑vlog concept for Persona X. Start with a sharp ‘before’ line. Write exact dialogue.”

**Vlogify & punch‑up**

“Rewrite as natural selfie‑vlog. Higher urgency. Use concrete nouns. No buzzwords.”

**8‑second chunking**

“Split into 8s chunks. ≤25 words each. End on a natural beat. Add \[stage note\] per chunk. Output as numbered list.”

**HiggsField JSON scaffold**

`{`  
  `"persona": "{role, age, vibe}",`  
  `"wardrobe": "{key pieces, brand‑safe colors}",`  
  `"scene": "{location, time, props}",`  
  `"lighting": "{key light, fill, backlight}",`  
  `"camera": "handheld selfie, slight shake, 24–28mm, eye‑level",`  
  `"composition": "chest‑up, background depth, practicals on",`  
  `"consistency": ["hairstyle", "blazer color", "desk plant"]`  
`}`

**Veo generation note (per chunk)**

“Use the attached still as base. Keep same face/wardrobe/lighting. Lip‑sync to this line: ‘{line}’. Action: {stage note}. 8 seconds.”

---

## **7\) Specs & Delivery**

* **Exports:** H.264 .mp4; 9:16 (1080×1920) @ 23.976/30fps; bitrate 8–12 Mbps; stereo 48kHz.

* **File names:** `<Client>_<Persona>_<Hook>_<Dur>_<v#>.mp4` (e.g., `FF_SalesExec_MeetingChaos_8s_v1.mp4`).

* **Captions:** Burn‑in for 9:16; .srt sidecar for 1:1/16:9 where needed.

* **Thumbs/first‑frame:** Export JPG (key line visible, face centered).

---

## **8\) Cadence & Capacity (MAVAN)**

* **Target volume:** **6–9 videos/month** across clients.

* **Current split:**

  * Fireflies: 2–3/mo

  * 30 A Terra: 2/mo (start with a safe concept)

  * Frankie: 2–3/mo

* **Jake capacity:** \~**10 hrs/week**. Protect time with upfront planning doc \+ calendarized asks.

* **Credit model (internal MAVAN):** plan **\~2 credits** per single video; keep a buffer for hooks/alt CTAs.

---

## **9\) Quickstart (one‑pager)**

1. Create **client folder** \+ **Veo folder**.

2. Ingest **ICP \+ site** in ChatGPT (role prompt).

3. Get **one** concept → **vlogify** → **8s chunks**.

4. Generate **2–3 HiggsField stills** from **Soul template**.

5. In **Veo**, generate 8s **talk** for chunk \#1 (4 outs) → pick best.

6. **Clone voice** in ElevenLabs.

7. Generate any **additional talk** chunks needed; cover the rest with **B‑roll \+ cloned VO**.

8. **CapCut:** stitch, captions, music. Export 9:16 (8s \+ 15s \+ 20/30s).

9. **QA checklist** → deliver v1 \+ alt hook/CTA.

---

## **10\) Risks & Mitigations**

* **Label inaccuracies:** Prefer **real product shots**; otherwise retouch before motion.

* **Voice weirdness:** Normalize with **ElevenLabs**; re‑time words to cuts.

* **Overlong lines:** Keep chunks ≤25 words; re‑line until clear at normal cadence.

* **Platform policy:** Avoid profanity/medical claims; include disclaimers where required.

---

## **11\) Next Steps (this month)**

* Client Lead: build **planning doc** (client folders, ICPs, brand guides, asset links).

* Operator: set up **Veo folders** per concept; prototype **8s master** for each client.

* Editor (or Producer in CapCut): learn CapCut basics; ship first 8s tests.

* Pilot: **38Tera** safe concept → client reaction → lock cadence.

# v1 Standard Operating Procedure (SOP)

# **📄 Standard Operating Procedure (SOP)**

## ***AI-Generated UGC Ad Creation Workflow***

**Objective:**  
 To efficiently generate high-performing, persona-aligned UGC ad content using ChatGPT, Google Veo 3, and Adobe Premiere Pro.

---

### **✅ Step 1: Upload & Ingest Brand Context into ChatGPT**

* Upload the following to ChatGPT:

  * Brand guidelines

  * Persona documentation

  * Historical creative learnings (past ad performance, insights, etc.)

Use this prompt:

“You're a creative strategist making 15-20 second long generative UGC ads for fireflies.ai. Please ingest this persona PDF and analyze it thoroughly. I will soon ask you to start developing ad concepts based on these personas, but first ingest this and read it thoroughly.”  
---

### **✅ Step 2: Analyze Product Offering for Strategic Angle**

Use ChatGPT with the following prompt to get familiar with product structure and offerings:

“Now go to the website and get an understanding of the product and offering here: https://fireflies.ai/

I need you to thoroughly look at the entire offering so you can then build specific concepts for each product.”  
---

### **✅ Step 3: Isolate Feature-Specific Pain Points & Solutions**

Dive deeper into one key feature (e.g., AI Notetaker) with this prompt:

“Now look at their AI Notetaker feature and build out the value props specifically of that as well as specific solutions it gives to existing pain points.”

---

### **✅ Step 4: Generate First Concept with Persona**

Start ad concepting using this prompt:

“Now build an ad concept that is no more than 30 seconds with dialogue that hits on the AI Notetaker product with one of our personas. It needs to open on a previous problem and then go into the solution that has been solved thanks to the AI Notetaker within fireflies.ai.”  
---

### **✅ Step 5: Convert Concept to Vlog Style Script**

Make it script more native to social/selfie iPhone vlog format with this prompt:

“Make it sound more like she's speaking to camera vlog style, "ok guys so before xyz" that type of format.”  
---

### **✅ Step 6: Optimize Script for Veo 3 Using Custom GPT**

* Use the **Custom GPT** found at:  
   👉 [https://chatgpt.com/g/g-68435e6c11888191875cd596f0be0f3a-ai-video-prompt-creator-selfie-style](https://chatgpt.com/g/g-68435e6c11888191875cd596f0be0f3a-ai-video-prompt-creator-selfie-style)

Paste your final vlog-style script and ask:

“Give me all the dialogue in here in separate prompts.”

* Below are the original scene-by-scene prompts to input into **Google Veo 3**:

#### **🔹 Prompt 1: (Opening Line Walking)**

Create a hyper-realistic shot of Fiona, an attractive, aspirational woman in her early 30s with shiny, shoulder-length chestnut-brown hair styled in soft waves, wearing a fitted, light beige blazer over a chic white blouse, paired elegantly with tailored navy trousers. She walks confidently along a bustling, sunny urban sidewalk, gently illuminated by early morning sunlight, carrying a sleek leather handbag. With an approachable yet polished look, Fiona holds a handheld vlogging camera at arm’s length, casually addressing it while walking, speaking clearly and warmly:  
"Okay guys, real talk, before Fireflies, meetings were honestly chaos. Back-to-back calls meant scribbling notes everywhere, and I was always paranoid I'd missed something important."  
The entire footage must be seen exactly as recorded through Fiona’s handheld selfie vlogging camera, with minor natural shakes, slight off-centering, and subtle repositioning as she navigates the crowded sidewalk. No external cameras, no third-person views — only the imperfect, handheld view from Fiona’s own perspective. No captions must be generated. No Cinematic Black Bars must be generated. Aspect ratio must be in 16:9. No watermark must be generated.

---

#### **🔹 Prompt 2: (Frustrated at Desk)**

Create a hyper-realistic shot of Fiona, attractive and aspirational in her early 30s, seated elegantly at her tidy workspace in a contemporary, sunlit office, her sleek chestnut-brown hair framing her confident, friendly expression. Wearing a refined beige blazer over a crisp white blouse and stylish navy trousers, Fiona appears relaxed yet professional, reviewing neatly organized notes on her laptop with the clear Fireflies.ai interface displayed. She directly addresses the handheld vlogging camera held steadily at arm’s length, her voice clear and relieved:  
"But now, Fireflies’ AI Notetaker joins all my meetings automatically, gives me super clear summaries, and even highlights the action items for me. It's like magic."  
The entire footage must be seen exactly as recorded through Fiona’s handheld selfie vlogging camera, with minor natural shakes, slight off-centering, and subtle repositioning as she shifts slightly in her office chair. No external cameras, no third-person views — only the imperfect, handheld view from Fiona’s own perspective. No captions must be generated. No Cinematic Black Bars must be generated. Aspect ratio must be in 16:9. No watermark must be generated.

---

#### **🔹 Prompt 3: (Showing Notes on Screen)**

Create a hyper-realistic shot of Fiona, attractive and aspirational in her early 30s, her glossy chestnut-brown hair neatly styled, dressed professionally in a tailored beige blazer, white blouse, and navy trousers. Fiona is confidently seated at her bright, minimalist office desk, gesturing toward the clear, organized notes displayed on her laptop screen. Her expression is composed, self-assured, and warmly inviting as she directly addresses the handheld vlogging camera held comfortably at arm’s length, clearly stating:  
"No more anxiety or wasted hours. Everything is searchable and clear."  
The entire footage must be seen exactly as recorded through Fiona’s handheld selfie vlogging camera, with minor natural shakes, slight off-centering, and subtle repositioning as she adjusts her seated position slightly. No external cameras, no third-person views — only the imperfect, handheld view from Fiona’s own perspective. No captions must be generated. No Cinematic Black Bars must be generated. Aspect ratio must be in 16:9. No watermark must be generated.

---

#### **🔹 Prompt 4: (Closing Line Sign-off)**

Create a hyper-realistic shot of Fiona, attractive and aspirational in her early 30s, her sleek chestnut-brown hair framing her polished and confident appearance, wearing a sophisticated beige blazer over a crisp white blouse, complemented by tailored navy trousers. She confidently closes her laptop with a calm yet decisive motion, seated at her clean, contemporary workspace bathed in gentle natural daylight. Her expression radiates warmth and certainty as she looks directly into the handheld vlogging camera held steadily at arm’s length, delivering the dialogue with quiet confidence:  
"Seriously, if meetings stress you out, you need Fireflies.ai. Game changer."  
The entire footage must be seen exactly as recorded through Fiona’s handheld selfie vlogging camera, with minor natural shakes, slight off-centering, and subtle repositioning as she adjusts slightly in her chair. No external cameras, no third-person views — only the imperfect, handheld view from Fiona’s own perspective. No captions must be generated. No Cinematic Black Bars must be generated. Aspect ratio must be in 16:9. No watermark must be generated.

---

### **✅ Step 7: Generate Footage in Google Veo 3**

* Input each of the 4 above prompts into Google Veo 3

* Use **FAST mode**

* Generate **4 outputs per prompt**

* Review for:

  * Realism

  * Consistency

  * Persona alignment

---

### **✅ Step 8: Edit Footage in Adobe Premiere Pro**

* Import Veo outputs into Premiere Pro

* Add:

  * **Auto-captions** using **FireCut.ai plugin**

  * **Background music** from [Artlist.io](https://artlist.io/)

* Maintain a 15–20 second final duration

---

### **✅ Step 9: Send for Client Review**

* Deliver final version for feedback

* Prepare alternates (different hooks, CTAs, personas) as needed