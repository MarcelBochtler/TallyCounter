# Tally Counter privacy policy

Edit `PRIVACY_STATEMENT.md` to update the privacy policy and contact information.
The Markdown file is the source of truth; do not edit generated HTML.

## Build locally

Install [Pandoc](https://pandoc.org/installing.html), then run:

```sh
sh scripts/build.sh
```

Open `_site/index.html` in a browser. Pandoc generates a complete HTML document
with a page title, English language metadata, and responsive default styles.
Generated files in `_site/` stay out of Git.

## Publish with GitHub Actions

`.github/workflows/pages.yml` builds the site on pull requests and pushes to
`main`. Only pushes to `main` and manual runs on `main` deploy to
[GitHub Pages](https://marcelbochtler.github.io/TallyCounter/). The workflow
uploads only `_site/`; it never commits generated HTML back to the repository.

### One-time migration from branch publishing

1. In [Settings → Pages](https://github.com/MarcelBochtler/TallyCounter/settings/pages),
   change **Build and deployment → Source** to **GitHub Actions**.
2. Push these commits to `main`. If they already exist on GitHub, open
   **Actions → Build and deploy privacy policy → Run workflow** and select `main`.
3. Check that the workflow's build and deployment jobs succeed.

The public URL stays the same. No personal access token or repository secret is
required; the deployment job uses GitHub's built-in token and OIDC permissions.
Once configured, update `PRIVACY_STATEMENT.md` and push to publish the changes.
