# Island Forge — storefront

The public site: five products, consulting, and the legal pages payment
processors ask for during verification.

Static HTML. No build step, no dependencies. Four pages, ~55 KB total.

```
index.html          products, services, payment options, contact
terms.html          terms of sale
sales-policy.html   all sales final, and the one exception
privacy.html        privacy notice
```

## Pricing

Priced by complexity rather than a flat rate:

| Tool | Price | Why |
| --- | ---: | --- |
| BookForge | $79 | Five book formats, an EPUB writer, a quality gate — the largest |
| ReelForge | $69 | Two tools in one: video studio and pipeline orchestrator |
| DesignForge | $59 | A full factory: trends, dedup memory, print pipeline, wallpapers |
| PainScout | $39 | One focused job, zero dependencies |
| ShipKit | $29 | A single platform, deliberately small |

Bundle of all five: **$179** (vs $275 separately). Team licence: 3× the single
price for 5 seats.

## Publishing to GitHub Pages

```bash
gh repo create islandforge-site --public --source=. --remote=origin --push
gh repo edit --enable-pages --pages-branch main
```

Or: **Settings → Pages → Deploy from a branch → main → / (root)**.

Live at `https://supulkalhara.github.io/islandforge-site/` within a minute or two.
This repo is **public**, unlike the five product repos — a storefront nobody can
read sells nothing. It contains no source code, only the site.

## Wiring up the buy buttons

Every buy button points at your Gumroad store root for now, so nothing is broken.
Swap them per product as each store goes live:

```bash
# Lemon Squeezy — the primary CTA (one URL per product, so do them individually)
sed -i "" "s|https://kalharasupul.gumroad.com/?ref=ls|https://YOURSTORE.lemonsqueezy.com/buy/UUID|" index.html

# Gumroad — the secondary link under each button
sed -i "" "s|href=\"https://kalharasupul.gumroad.com\"|href=\"https://kalharasupul.gumroad.com/l/SLUG\"|" index.html
```

The Lemon Squeezy overlay script is already loaded and the buttons carry the
`lemonsqueezy-button` class, so a real checkout URL opens over this page rather
than navigating away. Until then they behave as ordinary links.

## A custom domain

Processors take a custom domain more seriously than a `github.io` subdomain.

1. Buy `islandforge.dev` or similar.
2. Add a `CNAME` file containing just the domain.
3. At the registrar: `CNAME` for `www` → `supulkalhara.github.io`; `A`/`ALIAS`
   records for the apex → GitHub Pages IPs.
4. **Settings → Pages → Custom domain**, then tick **Enforce HTTPS**.

## Before you go live

- [ ] Real checkout URLs in place of the Gumroad store root
- [ ] Read `terms.html`, `sales-policy.html` and `privacy.html` — these are your
      commitments, not boilerplate
- [ ] Decide whether the consulting section stays (check your outside-work clause)
- [ ] Confirm the product `Details` links resolve, or drop them until the product
      pages are hosted
