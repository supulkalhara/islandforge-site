# Island Forge, storefront

Static site for GitHub Pages. No build step, no framework, no dependencies.

```
index.html            products, privacy, services, payment, contact
bookforge.html        product page: recorded demo, real output, diagram, buy
designforge.html
painscout.html
reelforge.html
shipkit.html
terms.html  sales-policy.html  privacy.html
assets/               real screenshots used on the product pages
storefront-images/    cover art to upload to Gumroad and Lemon Squeezy
STOREFRONT-LISTINGS.md  everything to paste into both storefronts
```

## Pricing

| Tool | Price | Why |
| --- | ---: | --- |
| BookForge | $79 | Five formats, an EPUB writer, a quality gate, the largest |
| ReelForge | $69 | Two tools in one: video studio and pipeline orchestrator |
| DesignForge | $59 | Full factory: trends, dedup memory, print pipeline, wallpapers |
| PainScout | $39 | One focused job, zero dependencies |
| ShipKit | $29 | A single platform, deliberately small |

Bundle: **$179** against $275. Team licence: 3x the single price for 5 seats.

## Publish

```bash
bash push-site.sh
```

Creates the public repo, pushes, enables Pages, and polls until the site answers.

## Wiring up the buy buttons

Every buy link is a visible placeholder, so a missed one cannot fail silently:

```bash
grep -o '__[A-Z_a-z]*__' *.html | sort -u
```

`STOREFRONT-LISTINGS.md` has the per-product copy and the replacement commands.

## The positioning

Every product page carries a "Your machine, your data" section stating, for that
specific tool, whether it runs offline and what leaves the computer. The answers
differ per tool and the pages say so rather than making one sweeping claim:

* BookForge and DesignForge run fully offline once models are downloaded
* PainScout fetches the public RSS feeds you list, because that is the job
* ReelForge is offline unless you enable the voiceover
* ShipKit talks to Gumroad by design and involves no model at all

Model download sizes are stated on the page (roughly 9 GB for a 14B model, 4.7 GB
for a 7B, 274 MB for embeddings, 6.9 GB for SDXL), because hiding that produces
refund requests. Anyone who would rather not download models can set an API base
and key and use any OpenAI-compatible endpoint instead.

## Notes

- Follows the visitor's light or dark preference. Every accent was contrast
  checked in both.
- Scroll reveals are an enhancement. Without JavaScript everything renders
  visible, with a 2 second failsafe.
- No em dashes anywhere in the copy.
- Fonts come from Google Fonts. Everything else is self-contained.
