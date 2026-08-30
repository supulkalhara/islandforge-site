#!/bin/bash
# Publish the Island Forge storefront to GitHub Pages.
#
#   cd "/Users/supul/Dev/MakingMoney/Making Money/islandforge-site"
#   bash push-site.sh
#
# Creates a PUBLIC repo (a storefront nobody can read sells nothing), pushes it,
# turns on Pages, and waits for the site to answer before telling you it worked.
# Safe to re-run.
set -uo pipefail

OWNER="supulkalhara"
REPO="islandforge-site"

BOLD=$'\033[1m'; GREEN=$'\033[32m'; YELLOW=$'\033[33m'; RED=$'\033[31m'; DIM=$'\033[2m'; OFF=$'\033[0m'
say(){ printf "%s\n" "$*"; }

say "${BOLD}Publishing the Island Forge storefront${OFF}"
say ""

[ -f index.html ] || { say "${RED}Run this from inside the islandforge-site folder.${OFF}"; exit 1; }

command -v gh >/dev/null 2>&1 || { say "${RED}GitHub CLI not found: brew install gh${OFF}"; exit 1; }
if ! gh auth status >/dev/null 2>&1; then
  say "${YELLOW}Not signed in. Run 'gh auth login' first, then re-run this.${OFF}"
  say "${DIM}Copy the one-time code the moment it appears — it expires quickly.${OFF}"
  exit 1
fi

ACTUAL="$(gh api user --jq .login 2>/dev/null)"
[ -n "$ACTUAL" ] || { say "${RED}Could not read your GitHub account.${OFF}"; exit 1; }
[ "$ACTUAL" != "$OWNER" ] && { say "${YELLOW}Signed in as '$ACTUAL', using that instead of '$OWNER'.${OFF}"; OWNER="$ACTUAL"; }
say "${GREEN}Signed in as $OWNER${OFF}"

# --- git ---
[ -d .git ] || git init -q
git add -A
git diff --cached --quiet || git commit -q -m "Storefront update"
git branch -M main

# --- repo ---
if gh repo view "$OWNER/$REPO" >/dev/null 2>&1; then
  say "repo exists"
else
  gh repo create "$OWNER/$REPO" --public \
     --description "Island Forge — small, sharp tools for people who ship alone" \
     >/dev/null 2>&1 && say "repo created" || { say "${RED}could not create repo${OFF}"; exit 1; }
fi

git remote remove origin 2>/dev/null
git remote add origin "https://github.com/$OWNER/$REPO.git"
git push -u origin main --force-with-lease >/dev/null 2>&1 && say "pushed" \
  || { say "${RED}push failed${OFF}"; exit 1; }

# --- pages ---
say "enabling GitHub Pages…"
gh api -X POST "repos/$OWNER/$REPO/pages" -f "source[branch]=main" -f "source[path]=/" \
  >/dev/null 2>&1 && say "Pages enabled" || say "${DIM}Pages already enabled (or set it under Settings → Pages)${OFF}"

URL="https://$OWNER.github.io/$REPO/"
say ""
say "Waiting for the site to go live (first build takes a minute or two)…"
for i in $(seq 1 40); do
  CODE="$(curl -s -o /dev/null -w '%{http_code}' --max-time 10 "$URL")"
  if [ "$CODE" = "200" ]; then
    say "${GREEN}${BOLD}Live:${OFF} $URL"
    for page in terms sales-policy privacy; do
      c="$(curl -s -o /dev/null -w '%{http_code}' --max-time 10 "$URL$page.html")"
      say "  $page.html  $c"
    done
    exit 0
  fi
  printf "\r  attempt %2d/40 — HTTP %s " "$i" "$CODE"
  sleep 15
done

say ""
say "${YELLOW}Not answering yet. This is normal for a first deploy.${OFF}"
say "Check ${BOLD}Settings → Pages${OFF} at https://github.com/$OWNER/$REPO/settings/pages"
say "then open $URL in a minute."
