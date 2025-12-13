# redaktor

## Clean URL Structure

This site uses a folder-based structure for clean URLs on GitHub Pages:
- `/` or `/index.html` - Homepage
- `/om-oss/` - About page (om-oss/index.html)
- `/kontakt/` - Contact page (kontakt/index.html)
- `/nyheter/` - News page (nyheter/index.html)
- `/projekt/` - Projects page (projekt/index.html)
- `/artikel-1/`, `/artikel-2/`, etc. - Individual articles
- `/biljetter/`, `/guldspaden/`, `/kurs/`, `/stipendier/` - Other pages

## Deployment

### GitHub Pages (Current Setup)
The site is configured for GitHub Pages deployment. Clean URLs work using a folder structure where each page is an `index.html` file inside its own directory.

**No configuration needed** - just push to the main branch and GitHub Pages will serve the files.

URLs are accessed with trailing slashes:
- `https://yourdomain.com/om-oss/` → serves `/om-oss/index.html`
- `https://yourdomain.com/kontakt/` → serves `/kontakt/index.html`

### Why This Approach?
GitHub Pages is a static host and does not support:
- `.htaccess` files (Apache-specific)
- Server-side URL rewriting
- Custom redirect rules

The folder-based structure is the native way to achieve clean URLs on GitHub Pages.

## File Structure
```
├── index.html (Homepage)
├── om-oss/
│   └── index.html (About page)
├── kontakt/
│   └── index.html (Contact page)
├── projekt/
│   └── index.html (Projects page)
├── nyheter/
│   └── index.html (News page)
├── artikel-1/
│   └── index.html (Article 1)
├── artikel-2/
│   └── index.html (Article 2)
├── artikel-3/
│   └── index.html (Article 3)
├── artikel-4/
│   └── index.html (Article 4)
├── biljetter/
│   └── index.html
├── guldspaden/
│   └── index.html
├── kurs/
│   └── index.html
├── stipendier/
│   └── index.html
└── stil2-*.html (Original backup files)
```