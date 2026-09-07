# Storefront listing packet

Everything to paste into Gumroad and Lemon Squeezy, per product. Cover art is in
`storefront-images/`; the extra screenshots are in `assets/`.

## The angle that sells these

Lead with it on every listing, because almost nothing else in these categories
can say it:

> **Your machine, your data.** No account, no telemetry, no licence check that
> phones home. Run an open model locally so nothing ever leaves your computer,
> or point the tool at an endpoint you already trust. There is no Island Forge
> server in the middle of either path.

Be specific rather than sweeping. Buyers who care about this can tell the
difference, and the honest version is stronger:

| Tool | Runs fully offline? | What leaves the machine |
| --- | --- | --- |
| BookForge | Yes, once models are on disk | Nothing |
| DesignForge | Yes, once models are on disk | Nothing |
| PainScout | No, reading public feeds is the job | Requests to the RSS feeds you list |
| ReelForge | Yes, if you skip the voiceover | Narration text, only if you set a key |
| ShipKit | No, talking to Gumroad is the job | Your files and listing data, to Gumroad |

Say the download cost out loud too. Hiding it produces refund requests:
qwen2.5:14b is about 9 GB, qwen2.5-coder:7b about 4.7 GB, nomic-embed-text about
274 MB, and an SDXL checkpoint about 6.9 GB. Downloaded once, 16 GB of RAM is
comfortable. Anyone who does not want that can set an API base and key instead.

## Do this once, before the products

**Gumroad**: Settings, then Payments, and confirm your payout method. Settings,
Advanced, Applications: create an application and generate an access token if
you want to publish with ShipKit rather than by hand.

**Lemon Squeezy**: create the store, then complete payout details first. That is
the step that confirms Sri Lanka clears. Then Settings, Payments, and enable
PayPal, because the website tells buyers PayPal is available. For each product,
under Licensing, turn on **Generate license keys**. That is the whole reason for
choosing this platform over Gumroad.

## The bundle

Name: **Island Forge, all five tools**. Price: **$179**, against $275 separately.
Include every file from all five products. Create it last, once the individual
listings exist.

---

## BookForge, $79

| Field | Value |
| --- | --- |
| **Name** | BookForge: A brief goes in. A finished book comes out |
| **URL slug** | `bookforge` |
| **Price** | $79 USD, one-time |
| **Team licence** | $237 for 5 seats (add as a second variant) |
| **Category** | Software > Developer Tools |
| **Cover image** | `storefront-images/bookforge-cover.png` (1280x720) |
| **Square / thumbnail** | `storefront-images/bookforge-square.png` (1200x1200) |
| **Badge on the cover** | Runs on your machine |
| **Files to upload** | The product zip (source), plus `README.md` as a preview |
| **Product page** | `https://supulkalhara.github.io/islandforge-site/bookforge.html` |

**Tags**: `self-publishing, kdp, epub, pdf, book generator, low content books, print on demand, local ai, offline ai, ollama, privacy, python, cli, automation`

**Summary (short description)**

Designed PDF interior, valid EPUB3, cover art, a full paperback wrap and the listing copy. Plus a quality gate that refuses to ship a placeholder cover or a truncated manuscript.

**Full description**

A brief goes in. A finished book comes out.

Designed PDF interior, valid EPUB3, cover art, a full paperback wrap and the listing copy. Plus a quality gate that refuses to ship a placeholder cover or a truncated manuscript.

### Your machine, your data

Runs fully offline? Completely, once the models are on disk.

What leaves your machine: Nothing. No account, no telemetry, no licence check that phones home.

Two ways to run it, and you choose:

* **On your own machine.** ollama pull qwen2.5:14b · ~9 GB once · 16 GB RAM
* **An endpoint you trust.** Set an API key and it uses any OpenAI-compatible endpoint instead: OpenAI, Azure OpenAI, Together, Groq, OpenRouter, vLLM, or your own LiteLLM gateway.

BookForge has no account system, no telemetry, and no licence check that calls
home. `bookforge doctor` prints which of the two is in effect, so you are never
guessing where your data went.

### What it does

**It refuses to ship a bad book**
Generated books fail quietly and expensively: the image model was asleep so every cover is the same gradient, or a truncated run produced an eight-page “book”. The gate blocks a placeholder cover, a short manuscript, a thin page count or a missing file, and exits non-zero so a pipeline stops with it.

**Print-correct, not print-hopeful**
The wrap is built at 300 DPI with the spine sized to the actual page count and the barcode area left clear. Oversized full-bleed interiors compress from 100 MB to under 10 with no visible loss at print size.

**Five formats, one contract**
Guides, sudoku, mazes, word search and coloring books all land in the same folder shape. That consistency is what makes the rest automatable.

**Nothing phones home**
Two optional localhost endpoints. No account, no API key, no telemetry. Your manuscripts never leave the machine, and a book costs nothing to make.

### What you need

Python 3.10+, macOS or Linux. Optionally an Ollama-compatible text model and an Automatic1111-compatible image server (Draw Things, AUTOMATIC1111, Forge, SD.Next). Without them it still builds, and tells you what is missing.

### What it does not do

It does not write the book for you, you supply the brief. It does not upload anything: Amazon KDP has no publishing API, so the last step is you pasting the generated fields into their form. Slower, and it keeps your account.

**Licence**: commercial, one person. Full source included. Everything you produce
with it is yours, no royalty, client work included. You may not redistribute the
software or resell it as a hosted service.

**All sales are final**, digital product, delivered immediately. Exception: if it
does not do what this page says, it gets fixed or refunded.

---

## DesignForge, $59

| Field | Value |
| --- | --- |
| **Name** | DesignForge: It remembers every design it already made |
| **URL slug** | `designforge` |
| **Price** | $59 USD, one-time |
| **Team licence** | $177 for 5 seats (add as a second variant) |
| **Category** | Software > Design Assets |
| **Cover image** | `storefront-images/designforge-cover.png` (1280x720) |
| **Square / thumbnail** | `storefront-images/designforge-square.png` (1200x1200) |
| **Badge on the cover** | Runs on your machine |
| **Files to upload** | The product zip (source), plus `README.md` as a preview |
| **Product page** | `https://supulkalhara.github.io/islandforge-site/designforge.html` |

**Tags**: `print on demand, pod, redbubble, teepublic, merch, stable diffusion, generative art, wallpapers, local ai, offline, python, cli`

**Summary (short description)**

A print-on-demand factory: trend research, coherent collections, embedding-based duplicate filtering, print-ready transparent PNGs and listing copy for every file.

**Full description**

It remembers every design it already made.

A print-on-demand factory: trend research, coherent collections, embedding-based duplicate filtering, print-ready transparent PNGs and listing copy for every file.

### Your machine, your data

Runs fully offline? Completely, once the models are on disk.

What leaves your machine: Nothing. Concepts, embeddings and rendered designs stay put. The dedup memory is a local JSON file recording what you have already made.

Two ways to run it, and you choose:

* **On your own machine.** ollama pull qwen2.5-coder:7b · ~4.7 GB · plus an SDXL checkpoint, ~6.9 GB
* **An endpoint you trust.** Set an API key for text and an image-server key if yours is remote. Both endpoints are yours to choose.

DesignForge has no account system, no telemetry, and no licence check that calls
home. `designforge doctor` prints which of the two is in effect, so you are never
guessing where your data went.

### What it does

**Memory is the whole feature**
Every accepted concept is embedded and stored. New concepts scoring above your similarity threshold against anything in that history are dropped before rendering. This is the difference between a catalogue and four hundred variations of the same owl.

**Why “not large enough to print” stops happening**
Renders are cropped to the visible subject, scaled so the artwork itself is print-size, then centred on a 5000×5500 transparent canvas. Marketplaces measure the subject, not the canvas, which is exactly why that rejection keeps happening to people.

**Direction is data, not code**
Trend scoring, collection structure, the render scaffold, sixteen named visual styles and the voice of every listing all live in editable JSON. Retune the factory without touching Python.

**Renders cannot collide**
Requests to the image server pass through a file lock, so an overnight batch and a one-off render never corrupt each other, a failure that costs you a whole night.

### What you need

Python 3.10+ and an Automatic1111-compatible image server (Draw Things, AUTOMATIC1111, Forge, SD.Next), plus Ollama for trend research and the dedup embeddings.

### What it does not do

The image server is not optional here, the image is the product. And you must review every design before it goes up: generative models produce near-copies of trademarked work when a prompt drifts, and that is your liability, not the model's.

**Licence**: commercial, one person. Full source included. Everything you produce
with it is yours, no royalty, client work included. You may not redistribute the
software or resell it as a hosted service.

**All sales are final**, digital product, delivered immediately. Exception: if it
does not do what this page says, it gets fixed or refunded.

---

## PainScout, $39

| Field | Value |
| --- | --- |
| **Name** | PainScout: Build for the problem that keeps coming back |
| **URL slug** | `painscout` |
| **Price** | $39 USD, one-time |
| **Team licence** | $117 for 5 seats (add as a second variant) |
| **Category** | Software > Business |
| **Cover image** | `storefront-images/painscout-cover.png` (1280x720) |
| **Square / thumbnail** | `storefront-images/painscout-square.png` (1200x1200) |
| **Badge on the cover** | Scoring stays local |
| **Files to upload** | The product zip (source), plus `README.md` as a preview |
| **Product page** | `https://supulkalhara.github.io/islandforge-site/painscout.html` |

**Tags**: `market research, product discovery, idea validation, rss, reddit, trends, local ai, ollama, privacy, python, cli, zero dependencies`

**Summary (short description)**

Reads what people publicly complain about, scores each recurring friction against your audience, and tracks how those scores move week over week.

**Full description**

Build for the problem that keeps coming back.

Reads what people publicly complain about, scores each recurring friction against your audience, and tracks how those scores move week over week.

### Your machine, your data

Runs fully offline? No, and it cannot be. Reading public feeds is the job.

What leaves your machine: Ordinary requests to the RSS feeds you list. Nothing else.

Two ways to run it, and you choose:

* **On your own machine.** ollama pull qwen2.5:14b · ~9 GB once · scoring never leaves the machine
* **An endpoint you trust.** Point it at an endpoint and the scraped snippets go there for scoring. That is the trade, stated plainly.

PainScout has no account system, no telemetry, and no licence check that calls
home. `painscout doctor` prints which of the two is in effect, so you are never
guessing where your data went.

### What it does

**The trend column is the point**
A score of 9 seen seven times across seven weeks and still climbing is a business. A 4 seen once is noise. Only a matrix that persists across runs can tell you which is which, a daily list of today's complaints cannot.

**Same pain, one row**
People word the same problem differently every week. Those must merge or the mention count never accumulates. Embeddings handle it; without the embedding model a looser lexical fallback takes over, and the tool says so when it does.

**One sentence changes everything**
Scoring is driven by a single line describing who you serve. Rewrite it for “overwhelmed parents of toddlers” and the same feeds produce a completely different board. A vague audience is the main cause of a boring one.

**Nothing to sign up for**
Every source is a public feed read with the standard library. Scoring runs on your machine. Running it daily for a year costs nothing, and it installs in seconds because it has no dependencies at all.

### What you need

Python 3.10+. Scraping needs only a network connection. Scoring needs Ollama or any compatible local model; the embedding model is recommended for de-duplication.

### What it does not do

It reads public complaints, not your market, Reddit and HN skew young, English-speaking and online. The score is one model's judgement, re-rolled each run; the trend is the signal. And snippets are titles and summaries, not whole threads. Go read the actual threads before you build.

**Licence**: commercial, one person. Full source included. Everything you produce
with it is yours, no royalty, client work included. You may not redistribute the
software or resell it as a hosted service.

**All sales are final**, digital product, delivered immediately. Exception: if it
does not do what this page says, it gets fixed or refunded.

---

## ReelForge, $69

| Field | Value |
| --- | --- |
| **Name** | ReelForge: A failure at step four shouldn't cost you steps one to three |
| **URL slug** | `reelforge` |
| **Price** | $69 USD, one-time |
| **Team licence** | $207 for 5 seats (add as a second variant) |
| **Category** | Software > Video |
| **Cover image** | `storefront-images/reelforge-cover.png` (1280x720) |
| **Square / thumbnail** | `storefront-images/reelforge-square.png` (1200x1200) |
| **Badge on the cover** | Runs on your machine |
| **Files to upload** | The product zip (source), plus `README.md` as a preview |
| **Product page** | `https://supulkalhara.github.io/islandforge-site/reelforge.html` |

**Tags**: `video, ffmpeg, tiktok, reels, youtube shorts, captions, text to speech, pipeline, orchestration, local ai, python`

**Summary (short description)**

Captioned 1080×1920 promo videos with narration and sound design, plus a config-driven pipeline orchestrator that survives every way a long job breaks.

**Full description**

A failure at step four shouldn't cost you steps one to three.

Captioned 1080×1920 promo videos with narration and sound design, plus a config-driven pipeline orchestrator that survives every way a long job breaks.

### Your machine, your data

Runs fully offline? Yes, if you skip the voiceover. Rendering is ffmpeg plus local models.

What leaves your machine: Nothing, unless you set an ElevenLabs key. Then the narration text goes to ElevenLabs so it can be spoken. Finished videos are never uploaded.

Two ways to run it, and you choose:

* **On your own machine.** ffmpeg is the only hard requirement · models optional
* **An endpoint you trust.** Text and image endpoints are both configurable, key included.

ReelForge has no account system, no telemetry, and no licence check that calls
home. `reelforge doctor` prints which of the two is in effect, so you are never
guessing where your data went.

### What it does

**Gated stages**
Any stage marked gated holds unless you explicitly enable live mode. Put everything that spends money or publishes behind it, and a misconfigured cron wastes electricity instead of shipping something broken to your audience.

**Serial on purpose**
One item, one stage, per tick. These stages drive a GPU, a browser or an upload, running two at once corrupts renders and trips rate limits. The lock is stolen after ninety minutes, because a hung stage should not wedge the queue forever.

**Degrades in four directions**
No image model gives branded placeholder frames. No voice key gives a silent track. No xfade support falls back to hard cuts. No video model means a static opening. The manifest records which path each run took.

**The orchestrator is not a video tool**
It runs shell commands you define in a JSON file, writing, building, checking, publishing, anything. It has no idea it is usually driving video.

### What you need

Python 3.10+ and ffmpeg. Everything else is optional: an image server for real frames, an ElevenLabs key for narration.

### What it does not do

It renders. It does not post. Every platform's terms prohibit automated posting through their web interface, and the accounts that get banned are the ones with something to lose. Use official APIs behind a gated stage if you want to automate distribution.

**Licence**: commercial, one person. Full source included. Everything you produce
with it is yours, no royalty, client work included. You may not redistribute the
software or resell it as a hosted service.

**All sales are final**, digital product, delivered immediately. Exception: if it
does not do what this page says, it gets fixed or refunded.

---

## ShipKit, $29

| Field | Value |
| --- | --- |
| **Name** | ShipKit: Run it twice. It won't make two listings |
| **URL slug** | `shipkit` |
| **Price** | $29 USD, one-time |
| **Team licence** | $87 for 5 seats (add as a second variant) |
| **Category** | Software > Developer Tools |
| **Cover image** | `storefront-images/shipkit-cover.png` (1280x720) |
| **Square / thumbnail** | `storefront-images/shipkit-square.png` (1200x1200) |
| **Badge on the cover** | Zero dependencies |
| **Files to upload** | The product zip (source), plus `README.md` as a preview |
| **Product page** | `https://supulkalhara.github.io/islandforge-site/shipkit.html` |

**Tags**: `gumroad, digital products, publishing, api, automation, sales, ecommerce, python, cli, zero dependencies`

**Summary (short description)**

Publish a folder of files to Gumroad from the command line and pull real sales figures back. Official API, no browser automation, not a single dependency.

**Full description**

Run it twice. It won't make two listings.

Publish a folder of files to Gumroad from the command line and pull real sales figures back. Official API, no browser automation, not a single dependency.

### Your machine, your data

Runs fully offline? No, and it cannot be. Talking to Gumroad is the job.

What leaves your machine: Your product files, listing text and price go to Gumroad over their official API, using a token you created. Sales figures come back into a local file you own.

Two ways to run it, and you choose:

* **On your own machine.** No model involved. Nothing to download.
* **An endpoint you trust.** Not applicable: there is no AI in the loop at all.

ShipKit has no account system, no telemetry, and no licence check that calls
home. `shipkit doctor` prints which of the two is in effect, so you are never
guessing where your data went.

### What it does

**Idempotent, because half-failures happen**
What has already been done is recorded beside the product. A second run updates the listing and uploads only the files that are not there yet. If it finds no record but your account already has a product with that name, it adopts it rather than creating a second one.

**A folder is a product**
Title and price are the only required fields. Omit the file list and it uploads every deliverable in the folder, skipping build leftovers. Your landing page becomes the description if you do not write one.

**Your numbers, locally**
Every run appends a monthly summary to a local JSON file, a record you own, that survives any change to someone else's dashboard, and that your own tools can read.

**Nothing to install**
Standard library only. About 150 lines of API client you can read in one sitting and extend to another platform that offers a real API.

### What you need

Python 3.10+ and a Gumroad access token (Settings → Advanced → Applications). No other dependencies.

### What it does not do

One platform, deliberately. An earlier version drove KDP, Apple Books, Lulu and TikTok through a scripted browser. It worked, and it was a bad thing to hand to anyone else. Those platforms prohibit it, and the failure mode is a suspended account with your catalogue inside it.

**Licence**: commercial, one person. Full source included. Everything you produce
with it is yours, no royalty, client work included. You may not redistribute the
software or resell it as a hosted service.

**All sales are final**, digital product, delivered immediately. Exception: if it
does not do what this page says, it gets fixed or refunded.

---

## Screenshot slots

Both platforms take several images. Suggested order:

1. `storefront-images/<slug>-cover.png`, the branded cover with the privacy badge
2. A screenshot of the terminal section from that product's page on the website:
   open `<slug>.html`, let the replay finish, capture the terminal block
3. A screenshot of the "Two ways to run it" section from the same page. This is
   the one that answers the question most buyers actually have
4. For **BookForge**: `assets/bf-page-2-sm.png`, `bf-page-0-sm.png`,
   `bf-cover-sm.png`, real output
5. For **ReelForge**: `assets/rf-frame-*.png`, real rendered frames
6. The architecture diagram from the "How it works" section

Screenshot 2 is what sells: a recording of the tool actually working, which
almost no competing listing has.

## After the listings exist

Collect each product's URL and replace the placeholders in the website. Do one
product at a time and paste its own URLs:

```bash
cd islandforge-site
sed -i "" "s|__LS_bookforge__|PASTE_LEMONSQUEEZY_URL|g" *.html
sed -i "" "s|__GUMROAD_bookforge__|PASTE_GUMROAD_URL|g" *.html
sed -i "" "s|__PAYHIP_bookforge__|PASTE_PAYHIP_URL|g" *.html
```

Any placeholder you miss shows on the page as a literal `__LS_bookforge__`, so
nothing fails silently. Check what is left with:

```bash
grep -o '__[A-Z_a-z]*__' *.html | sort -u
```
