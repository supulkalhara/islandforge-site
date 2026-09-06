# Island Forge — storefront

Static site for GitHub Pages. No build step, no framework, no dependencies.

```
index.html            products, services, payment, contact
bookforge.html        product page — recorded demo, real output, diagram, buy
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
| BookForge | $79 | Five formats, an EPUB writer, a quality gate — the largest |
| ReelForge | $69 | Two tools in one: video studio and pipeline orchestrator |
| DesignForge | $59 | Full factory: trends, dedup memory, print pipeline, wallpapers |
| PainScout | $39 | One focused job, zero dependencies |
| ShipKit | $29 | A single platform, deliberately small |

Bundle: **$179** (vs $275). Team licence: 3× the single price for 5 seats.

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

`STOREFRONT-LISTINGS.md` has the per-product listing copy and the replacement
commands. Do one product at a time.

## What is on a product page

1. **Recorded demo** — a transcript of a real run, typed out on scroll, with a
   Replay button. Labelled "recorded run" in the title bar, because it is a
   replay and not a live shell.
2. **Real output** — actual files from those runs (BookForge PDF pages and
   cover, ReelForge video frames). Not mockups.
3. **How it works** — an architecture diagram, drawn as inline SVG so it stays
   sharp and follows the light/dark theme.
4. **Why it is built this way** — the reasoning behind each guard rail.
5. **What you need / what it does not do** — stated before the buy button, not
   after.
6. **Buy** — Lemon Squeezy, Gumroad (PayPal enabled), Payhip, bank transfer and
   team licences.

## Notes

- The site follows the visitor's light/dark preference. Every accent was checked
  for contrast in both.
- Scroll reveals are an enhancement: without JavaScript everything renders
  visible, and a 2-second failsafe reveals anything the observer missed.
- Fonts come from Google Fonts. Everything else is self-contained; total page
  weight is well under 200 KB excluding images.
