#!/bin/sh
set -eu

cd "$(dirname "$0")/.."

mkdir -p _site
pandoc PRIVACY_STATEMENT.md \
  --from=gfm \
  --to=html5 \
  --standalone \
  --metadata pagetitle="Tally Counter Privacy Policy" \
  --metadata lang=en \
  --output=_site/index.html
