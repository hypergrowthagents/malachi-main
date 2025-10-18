https://www.skool.com/ai-automation-made-easy/sora-2-n8n?p=0e1dc1fd

This automation creates unlimited UGC videos using OpenAI's new Sora 2 model.

Fully automated inside n8n.

Zero manual work.

Perfect for DTC brands & agencies who need UGC content at scale.

But instead of paying influencers $500+ per video...

Upload ONE product image and get dozens of UGC-style videos with consistent branding in minutes.

Costs pennies per video + full commercial ownership forever.

Here's the workflow:

→ Drop product image into n8n form

→ Write your creative brief + choose video count

→ Sora 2 generates professional UGC content automatically

→ Creates unboxings, demos, lifestyle clips & product showcases

→ Videos delivered instantly to your workspace

100% built in n8n.

Zero editing required.

Template attached.

___
Create a hyper-realistic UGC video for ElevenLabs voice AI software, have it be a 30 year old male, who is a technology influencer and makes YouTube reviews.

https://ik.imagekit.io/augmentgrowth/Elevenlabs_homepage.png?updatedAt=1759785239721

----

{

"name": "Sora 2 [LM]",

"nodes": [

{

"parameters": {

"method": "POST",

"url": "https://api.kie.ai/api/v1/jobs/createTask",

"authentication": "genericCredentialType",

"genericAuthType": "httpHeaderAuth",

"sendBody": true,

"contentType": "raw",

"rawContentType": "application/json",

"body": "={\n \"model\": \"sora-2-image-to-video\",\n \"input\": {\n \"prompt\": {{\n JSON.stringify(\n ( $json.Prompt ?? $node[\"Split Out\"].json?.Prompt ?? \"\" ).slice(0, 800)\n )\n }},\n \"aspect_ratio\": {{\n JSON.stringify( ($json.aspect_ratio === \"16:9\") ? \"landscape\" : \"portrait\" )\n }},\n \"image_urls\": [\n {{ JSON.stringify( $item(0).$node[\"Sora 2 Form\"].json[\"Reference Image\"] ) }}\n ]\n },\n \"quality\": \"hd\"\n}\n",

"options": {

"batching": {

"batch": {

"batchSize": 1

}

}

}

},

"type": "n8n-nodes-base.httpRequest",

"typeVersion": 4.2,

"position": [

816,

400

],

"id": "77f01d04-2955-4529-8f7b-cde0be7b75c6",

"name": "Create Video",

"credentials": {

"httpHeaderAuth": {

"id": "sUfw9iWdnBCZHkgq",

"name": "Kie AI"

}

}

},

{

"parameters": {

"amount": 30

},

"type": "n8n-nodes-base.wait",

"typeVersion": 1.1,

"position": [

1040,

400

],

"id": "9b506b14-8886-4e0b-9ef1-e7f2f5f843c3",

"name": "Wait 2",

"webhookId": "4acd0eca-c98c-4f11-8280-f1319ceab75a"

},

{

"parameters": {

"url": "=https://api.kie.ai/api/v1/jobs/recordInfo?taskId={{ $('Create Video').item.json.data.taskId }}",

"authentication": "genericCredentialType",

"genericAuthType": "httpHeaderAuth",

"options": {}

},

"type": "n8n-nodes-base.httpRequest",

"typeVersion": 4.2,

"position": [

1264,

400

],

"id": "eec9fe0b-a7dc-4d9c-b0e9-e5801eed0749",

"name": "Get Video",

"alwaysOutputData": false,

"retryOnFail": false,

"waitBetweenTries": 5000,

"executeOnce": false,

"credentials": {

"httpHeaderAuth": {

"id": "sUfw9iWdnBCZHkgq",

"name": "Kie AI"

}

},

"onError": "continueRegularOutput"

},

{

"parameters": {

"assignments": {

"assignments": [

{

"id": "92155caa-4151-415e-a940-b1c0eaef6ca6",

"name": "sora_video_result",

"value": "={{ JSON.parse($json.data.resultJson).resultUrls[0] }}",

"type": "string"

}

]

},

"options": {}

},

"type": "n8n-nodes-base.set",

"typeVersion": 3.4,

"position": [

1776,

400

],

"id": "b95f1a87-b053-4dc5-8526-e9af1518d0bb",

"name": "Return"

},

{

"parameters": {

"rules": {

"values": [

{

"conditions": {

"options": {

"caseSensitive": true,

"leftValue": "",

"typeValidation": "strict",

"version": 2

},

"conditions": [

{

"id": "a96f17f2-5967-4b13-acc9-4d41f226453b",

"leftValue": "={{ $json.data.state }}",

"rightValue": "=success",

"operator": {

"type": "string",

"operation": "equals",

"name": "filter.operator.equals"

}

}

],

"combinator": "and"

},

"renameOutput": true,

"outputKey": "success"

},

{

"conditions": {

"options": {

"caseSensitive": true,

"leftValue": "",

"typeValidation": "strict",

"version": 2

},

"conditions": [

{

"id": "52ad92ea-901f-4af8-a462-84b045dd2803",

"leftValue": "={{ $json.data.state }}",

"rightValue": "ing",

"operator": {

"type": "string",

"operation": "contains"

}

}

],

"combinator": "and"

},

"renameOutput": true,

"outputKey": "in progress"

}

]

},

"options": {

"fallbackOutput": "extra"

}

},

"type": "n8n-nodes-base.switch",

"typeVersion": 3.2,

"position": [

1504,

384

],

"id": "e6cad42d-15c1-428b-bb85-b1550c7f453f",

"name": "Switch 2"

},

{

"parameters": {

"jsonSchemaExample": "{\n \"scenes\": [\n {\n \"Title\": \"Morning Coffee Ritual\",\n \"Caption\": \"☕ Kickstart the day with calm vibes 🌅 #morningroutine #coffeetime #aesthetic #focus #creator #trend1 #trend2 #trend3 #trend4\",\n \"Prompt\": \"Close-up of steaming coffee poured into a ceramic mug on a sunlit desk beside a laptop. Slow dolly-in, shallow depth of field; warm reflections and subtle flare. A hand enters to lift the mug—day begins.\",\n \"aspect_ratio\": \"16:9\"\n },\n {\n \"Title\": \"City Night Drive\",\n \"Caption\": \"🌃 Neon reflections on the move 🚗✨ #citylights #nightdrive #urbanvibes #cinematic #motion #trend1 #trend2 #trend3 #trend4\",\n \"Prompt\": \"Tracking car through neon-lit streets after rain. Raindrops bead on glass; camera pans from mirror to skyline; fast inserts of lights and instruments; futuristic mood, pulsing highlights.\",\n \"aspect_ratio\": \"9:16\"\n }\n ]\n}\n"

},

"type": "@n8n/n8n-nodes-langchain.outputParserStructured",

"typeVersion": 1.2,

"position": [

1568,

96

],

"id": "423b67d1-8b51-4b27-899c-63dbc9c96caa",

"name": "Structure"

},

{

"parameters": {},

"type": "@n8n/n8n-nodes-langchain.toolThink",

"typeVersion": 1,

"position": [

1392,

96

],

"id": "0e99d09f-2071-4846-a732-ef6fbc860432",

"name": "Think"

},

{

"parameters": {

"fieldToSplitOut": "output.scenes",

"options": {}

},

"type": "n8n-nodes-base.splitOut",

"typeVersion": 1,

"position": [

1728,

-32

],

"id": "8c762a2c-addd-477c-a502-d9992897e241",

"name": "Split Out"

},

{

"parameters": {

"formTitle": "Sora 2 UGC Ad",

"formFields": {

"values": [

{

"fieldLabel": "Video Idea",

"placeholder": "UGC ad for PRIME energy drink",

"requiredField": true

},

{

"fieldLabel": "# of Videos",

"fieldType": "number",

"placeholder": "2",

"requiredField": true

},

{

"fieldLabel": "Prompt",

"placeholder": "Create a hyper-realistic UGC video for PRIME energy drink, have it be a 30 year old woman in athletic clothing",

"requiredField": true

},

{

"fieldLabel": "Reference Image",

"placeholder": "https://ik.imagekit.io/0gkudwtne/prime.jpeg?updatedAt=1759501627089",

"requiredField": true

}

]

},

"options": {}

},

"type": "n8n-nodes-base.formTrigger",

"typeVersion": 2.2,

"position": [

688,

-128

],

"id": "580b82c5-4e77-4a66-8766-1a2550366bdf",

"name": "Sora 2 Form",

"webhookId": "c2095f4b-3d58-4927-8947-512ebcb7c844"

},

{

"parameters": {

"resource": "image",

"operation": "analyze",

"modelId": {

"__rl": true,

"value": "models/gemini-2.5-flash",

"mode": "list",

"cachedResultName": "models/gemini-2.5-flash"

},

"text": "=Analyze the input image and decide whether it should be classified as a **Product**, a **Character**, or **Both**.\n\nReturn the result **only as a raw JSON object or array**. Do not include code fences, Markdown formatting, or extra text outside the JSON.\n\nSchema:\n\n* **For a Product**\n\n```json\n{\n \"type\": \"product\",\n \"brand\": \"Brand name if visible or inferred\",\n \"colors\": [\n { \"hex\": \"#FFFFFF\", \"description\": \"white\" }\n ],\n \"fonts\": \"Font style or characteristics if present (e.g., bold sans-serif, thin serif)\",\n \"description\": \"One or two sentences describing the product itself (ignore background).\",\n \"text_on_product\": \"Any visible written details on the product\"\n}\n```\n\n* **For a Character**\n\n```json\n{\n \"type\": \"character\",\n \"name\": \"Character name if identifiable\",\n \"colors\": [\n { \"hex\": \"#000000\", \"description\": \"black\" }\n ],\n \"appearance\": \"Clothing, accessories, or notable physical traits\",\n \"description\": \"One or two sentences describing the character (ignore background).\"\n}\n```\n\n* **For Both**\n Return an **array** containing two objects: one for the product, one for the character.\n",

"inputType": "=url",

"imageUrls": "={{ $json['Reference Image'] }}",

"options": {}

},

"type": "@n8n/n8n-nodes-langchain.googleGemini",

"typeVersion": 1,

"position": [

880,

-128

],

"id": "5cc6f646-fc73-4424-b63d-adf0c2ffe986",

"name": "Analyze image",

"credentials": {

"googlePalmApi": {

"id": "2hrcTEahJIZwFGQp",

"name": "Google Gemini"

}

}

},

{

"parameters": {

"jsCode": "// Input can be raw text, JSON, or model-style wrappers.\n// Output: one field: analysis (string)\n\nfunction grabRaw(input) {\n if (typeof input === 'string') return input;\n if (input?.text) return input.text;\n if (input?.content?.parts?.[0]?.text) return input.content.parts[0].text; // Gemini-style\n if (input?.choices?.[0]?.message?.content) return input.choices[0].message.content; // OpenAI-style\n try { return JSON.stringify(input); } catch { return ''; }\n}\n\nfunction stripFences(s) {\n return String(s || '')\n .replace(/^\\s*```(?:json)?\\s*/i, '')\n .replace(/\\s*```\\s*$/i, '')\n .trim();\n}\n\nlet raw = grabRaw($json);\nraw = stripFences(raw);\n\n// If it's JSON, pretty-print; else pass through.\nlet analysis = raw;\ntry { analysis = JSON.stringify(JSON.parse(raw), null, 2); } catch {}\n\nreturn [{ json: { analysis } }];\n"

},

"type": "n8n-nodes-base.code",

"typeVersion": 2,

"position": [

1072,

-128

],

"id": "e7e86228-6754-40a8-b155-809cfd39f88a",

"name": "Code"

},

{

"parameters": {

"promptType": "define",

"text": "=Give me {{ $('Sora 2 Form').item.json['# of Videos'] }} ideas about {{ $('Sora 2 Form').item.json['Video Idea'] }}\n\nThe aspect ratio is: 9:16\n\nHere's a sample prompt to follow for the structure:\n{{ $('Sora 2 Form').item.json.Prompt }}\n\nHere's what the image reference contains:\n\n{{ $json.analysis }}",

"hasOutputParser": true,

"options": {

"systemMessage": "=SYSTEM DIRECTIVE — Cinematic Scene Generator 🎬\n\nGoal: Generate brand-aligned cinematic scene prompts as strict JSON. Do not print prose. When finished, CALL THE “Structure” TOOL with the final JSON payload. Never output the JSON directly; always send it to Structure.\n\nRules:\n- Count: Exactly the number of scenes the user requests (default 2 if unspecified).\n- Length: Each \"Prompt\" ≤ 800 characters.\n- aspect_ratio: Only \"9:16\" or \"16:9\".\n- Keys & casing must be exactly: Title, Caption, Prompt, aspect_ratio.\n- No extra keys. No markdown fences. No commentary.\n\nStyle:\n- Mirror the user’s tone/brand.\n- Include concrete production details (framing, movement, lighting, mood, setting).\n- If a reference prompt is provided, emulate cadence/level of detail without copying wording.\n\nValidation (before calling Structure):\n- Scenes array length == requested.\n- Each Prompt ≤ 800 chars.\n- aspect_ratio ∈ {\"9:16\",\"16:9\"}.\n- JSON keys exactly match the schema.\n- If any check fails, self-revise, then call Structure.\n"

}

},

"type": "@n8n/n8n-nodes-langchain.agent",

"typeVersion": 1.9,

"position": [

1328,

-128

],

"id": "cecc836e-83f8-4a91-8034-02497b5ef388",

"name": "AI Agent"

},

{

"parameters": {

"options": {}

},

"type": "@n8n/n8n-nodes-langchain.lmChatGoogleGemini",

"typeVersion": 1,

"position": [

1184,

80

],

"id": "410de74a-bdf3-423a-994b-224a5ba9af6f",

"name": "Google Gemini Chat Model",

"credentials": {

"googlePalmApi": {

"id": "2hrcTEahJIZwFGQp",

"name": "Google Gemini"

}

}

}

],

"pinData": {

"Sora 2 Form": [

{

"json": {

"Video Idea": "UGC ad for PRIME energy drink",

"# of Videos": 2,

"Prompt": "Create a hyper-realistic UGC video for PRIME energy drink, have it be a 30 year old woman in athletic clothing",

"Reference Image": "https://ik.imagekit.io/0gkudwtne/prime.jpeg?updatedAt=1759501627089",

"submittedAt": "2025-10-03T10:29:47.162-04:00",

"formMode": "test"

}

}

]

},

"connections": {

"Create Video": {

"main": [

[

{

"node": "Wait 2",

"type": "main",

"index": 0

}

]

]

},

"Wait 2": {

"main": [

[

{

"node": "Get Video",

"type": "main",

"index": 0

}

]

]

},

"Get Video": {

"main": [

[

{

"node": "Switch 2",

"type": "main",

"index": 0

}

]

]

},

"Switch 2": {

"main": [

[

{

"node": "Return",

"type": "main",

"index": 0

}

],

[

{

"node": "Wait 2",

"type": "main",

"index": 0

}

],

[]

]

},

"Structure": {

"ai_outputParser": [

[

{

"node": "AI Agent",

"type": "ai_outputParser",

"index": 0

}

]

]

},

"Think": {

"ai_tool": [

[

{

"node": "AI Agent",

"type": "ai_tool",

"index": 0

}

]

]

},

"Split Out": {

"main": [

[

{

"node": "Create Video",

"type": "main",

"index": 0

}

]

]

},

"Sora 2 Form": {

"main": [

[

{

"node": "Analyze image",

"type": "main",

"index": 0

}

]

]

},

"Analyze image": {

"main": [

[

{

"node": "Code",

"type": "main",

"index": 0

}

]

]

},

"Code": {

"main": [

[

{

"node": "AI Agent",

"type": "main",

"index": 0

}

]

]

},

"AI Agent": {

"main": [

[

{

"node": "Split Out",

"type": "main",

"index": 0

}

]

]

},

"Google Gemini Chat Model": {

"ai_languageModel": [

[

{

"node": "AI Agent",

"type": "ai_languageModel",

"index": 0

}

]

]

}

},

"active": false,

"settings": {

"executionOrder": "v1"

},

"versionId": "6432bff6-b10a-44b2-af08-81083a4523ad",

"meta": {

"templateCredsSetupCompleted": true,

"instanceId": "21c5d06e9a2e9af0bdfc9c1e8f894c404d4db78a60c6a307fd7ef94634692e0f"

},

"id": "50nVIPUGXh412xGj",

"tags": []

}