# Island Forge — storefront

The public site for Island Forge: five products, consulting, and the legal pages
payment processors ask for during verification.

Static HTML. No build step, no dependencies, no framework. Four pages, ~50 KB total.

```
index.html      products, services, payment options, contact
terms.html      terms of sale
refunds.html    refund policy
privacy.html    privacy notice
```

## Publishing to GitHub Pages

```bash
gh repo create islandforge-site --public --source=. --remote=origin --push
gh repo edit --enable-pages --pages-branch main
```

Or in the browser: **Settings → Pages → Source: Deploy from a branch → main → / (root)**.

It goes live at `https://supulkalhara.github.io/islandforge-site/` within a minute or two.

This repo is **public** — unlike the five product repos — because a storefront
nobody can read sells nothing. It contains no source code, only the site.

## Wiring up the buy buttons

Every buy button currently points at your Gumroad store root, so nothing is broken.
Swap them as each store goes live:

```bash
# Lemon Squeezy — the primary CTA on each product and the bundle
sed -i '' 's|https://kalharasupul.gumroad.com/?ref=ls|https://YOURSTORE.lemonsqueezy.com/buy/UUID|g' index.html

# Gumroad — the secondary link under each button
sed -i '' 's|href="https://kalharasupul.gumroad.com"|href="https://kalharasupul.gumroad.com/l/SLUG"|g' index.html
```

Each product needs its own checkout URL, so do them one at a time rather than
with a single global replace.

The Lemon Squeezy overlay script is already loaded, and buttons carry the
`lemonsqueezy-button` class — once a real checkout URL is in place, the checkout
opens over this page instead of navigating away. Until then the buttons behave as
ordinary links, which is why nothing looks broken in the meantime.

## A custom domain

Payment processors take a custom domain more seriously than a `github.io`
subdomain, and it costs a few dollars a year.

1. Buy `islandforge.dev` (or similar).
2. Add a `CNAME` file to this repo containing just the domain.
3. At your registrar, point a `CNAME` record for `www` at `supulkalhara.github.io`,
   and `ALIAS`/`A` records for the apex at GitHub's Pages IPs.
4. **Settings → Pages → Custom domain**, then tick **Enforce HTTPS**.

## Before you go live

- [ ] Real checkout URLs in place of the Gumroad store root
- [ ] Read `terms.html`, `refunds.html` and `privacy.html` and make sure you
      actually agree to them — they are your commitments, not boilerplate
- [ ] Decide whether the consulting section stays (see the note in the handover)
- [ ] Check the product detail links resolve, or remove them until the product
      repos have published pages
