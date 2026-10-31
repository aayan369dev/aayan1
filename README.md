# AAYAN Cinematic Portfolio

Single-page scroll portfolio (GSAP + ScrollTrigger + Lenis, canvas, CSS 3D). No build step.

## Files
| File | What it is |
|---|---|
| `index.html` | The whole site (HTML, CSS, JS) |
| `privacy.html`, `terms.html` | Privacy Policy and Terms & Conditions |
| `404.html` | Custom "page not found" page (GitHub Pages uses it automatically) |
| `robots.txt`, `sitemap.xml`, `site.webmanifest` | SEO and install metadata |
| `favicon.ico`, `assets/` | Favicons, icons, social preview image (`og-image.jpg`), hero photo (`me-cutout.webp`), `legal.css` |
| `setup.sh` | Fills in your real site URL (see step 2) |

## Launch in 4 steps
1. Create a GitHub repo and upload **all** these files to the root.
2. In a terminal inside the folder run `bash setup.sh https://USERNAME.github.io/REPO` (use your custom domain instead if you have one). This replaces `__SITE_URL__` and `__BASE_PATH__` in the canonical links, social preview, sitemap, robots and 404 page. Commit the result. No terminal? Open each of those files and replace the two placeholders by hand.
3. Repo **Settings > Pages**: Source = *Deploy from a branch*, Branch = `main` / `(root)`, Save. Then tick **Enforce HTTPS**.
4. Edit `const CONFIG` near the bottom of `index.html` (see below).

## What to edit in `CONFIG`
- `name`, `email`, `line`, `milestones`, `projects`: replace the sample text with your real content.
- `formEndpoint`: paste a Formspree (or similar) endpoint, e.g. `https://formspree.io/f/xxxxxxxx`. Left empty, the contact form opens the visitor's email app instead. Turn on Formspree's reCAPTCHA or Turnstile if spam grows.
- `analytics`: `{ provider: "plausible", id: "yourdomain.com" }`, `{ provider: "goatcounter", id: "yourcode" }` or `{ provider: "ga4", id: "G-XXXXXXX" }`. It loads **only after the visitor clicks Accept**. Empty means no analytics.

## Checklist status
| Item | Status |
|---|---|
| Privacy policy / Terms | Done. They are templates: have them reviewed before commercial use and check the governing-law line |
| Remove frontend secrets | Done. Nothing secret is in the code; the form endpoint and analytics ID are public by design. Never put private API keys in these files |
| Enforce HTTPS | Done in code (redirect + `upgrade-insecure-requests`). **You must also tick "Enforce HTTPS" in Pages settings** |
| Cookie consent banner | Done. Choice is stored in the browser; the "Cookie settings" link reopens it |
| Meta titles/descriptions, canonical, JSON-LD | Done |
| Social preview image | Done (`assets/og-image.jpg`, 1200x630) |
| Favicon | Done (ico, svg, png, apple-touch, manifest icons) |
| Sitemap and robots.txt | Done (finish with `setup.sh`) |
| Image alt text | Done. Decorative graphics are hidden from screen readers |
| Image compression | Done. Hero photo 52 KB (WebP), social image 61 KB |
| Page load speed | Optimised (deferred scripts, preload, small assets, font swap). Run Lighthouse or PageSpeed after publishing for a real score |
| Color contrast | Checked. All text pairs meet WCAG AA (4.5:1) |
| Mobile responsiveness | Checked at 390 px and 1280 px, no horizontal scroll |
| Custom 404 | Done |
| Broken link fixes | Checked. Every internal link, anchor and asset resolves |
| Form validation | Done (inline errors, focus moves to the first error) |
| Spam protection | Honeypot field, minimum fill time, link limit, 60 second resend cooldown |
| Analytics setup | Ready and consent-gated. Add your ID in `CONFIG` |
| Single clear CTA | "Start a project" (top nav and the contact form) |

## Run locally
`npx serve .` in this folder, or open `index.html` directly.
