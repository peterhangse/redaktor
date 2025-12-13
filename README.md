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

## Testing

### Local Testing
To test the site locally before deployment:

```bash
# Start a local web server
python3 -m http.server 8000

# Visit http://localhost:8000 in your browser
# Or run the automated smoke test:
./test-urls.sh

# Test production site:
./test-urls.sh https://xn--redaktr-f1a.se
```

### Smoke Test
The `test-urls.sh` script automatically tests all page URLs and verifies they return HTTP 200 OK.

### Manual Testing Checklist
When testing on the deployed site:
1. ✅ All URLs should end with `/` (trailing slash)
2. ✅ No `.html` extensions should appear in the browser address bar
3. ✅ Pages should load without 404 errors
4. ✅ Navigation links should work correctly
5. ✅ Test in private/incognito mode to avoid cache issues

### Troubleshooting
If you encounter 404 errors:
- Clear your browser cache (old URLs may be cached)
- Test in incognito/private browsing mode
- Verify the GitHub Pages deployment completed successfully in the Actions tab
- Check that the custom domain DNS is properly configured