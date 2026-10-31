#!/usr/bin/env bash
# Usage: bash setup.sh https://USERNAME.github.io/REPO     (or your custom domain, e.g. https://aayan.dev)
# Replaces the __SITE_URL__ and __BASE_PATH__ placeholders in all files.
set -e
URL="${1%/}"
if [ -z "$URL" ]; then echo "Usage: ./setup.sh https://USERNAME.github.io/REPO"; exit 1; fi
PATH_PART="$(echo "$URL" | sed -E 's#^https?://[^/]+##')"
BASE="${PATH_PART}/"
for f in index.html 404.html privacy.html terms.html robots.txt sitemap.xml; do
  sed -i.bak "s#__SITE_URL__#${URL}#g; s#__BASE_PATH__#${BASE}#g" "$f" && rm -f "$f.bak"
done
echo "Done. Site URL: $URL   Base path: $BASE"
