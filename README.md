# redaktor

## Clean URL Structure

This site uses clean URLs with .html extensions:
- `/` or `/index.html` - Homepage
- `/om-oss.html` - About page
- `/kontakt.html` - Contact page
- `/nyheter.html` - News page
- `/projekt.html` - Projects page
- `/artikel-1.html`, `/artikel-2.html`, etc. - Individual articles
- `/biljetter.html`, `/guldspaden.html`, `/kurs.html`, `/stipendier.html` - Other pages

## Deployment

### GitHub Pages (Current Setup)
The site is configured for GitHub Pages deployment. Clean URLs work by using `.html` file extensions.

**No configuration needed** - just push to the main branch and GitHub Pages will serve the files.

URLs can be accessed either with or without the `.html` extension:
- With extension: `https://yourdomain.com/om-oss.html`
- Without extension (GitHub Pages auto-resolves): `https://yourdomain.com/om-oss`

### Apache Server (Alternative)
If deploying to an Apache server, the included `.htaccess` file provides:
- URL rewriting to allow accessing pages without .html extension
- 301 redirects from old `stil2-*.html` URLs to new clean URLs
- UTF-8 charset configuration

**Requirement**: Apache mod_rewrite must be enabled.

## File Structure
- `index.html` - Homepage
- `stil2-*.html` - Original HTML files with technical naming (maintained for backward compatibility)
- Clean named HTML files (`om-oss.html`, `kontakt.html`, etc.) - Primary files used for clean URLs