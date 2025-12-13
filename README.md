# redaktor

## Clean URL Structure

This site uses clean URLs without file extensions:
- `/` - Homepage (index.html)
- `/om-oss` - About page
- `/kontakt` - Contact page
- `/nyheter` - News page
- `/projekt` - Projects page
- `/artikel-1`, `/artikel-2`, etc. - Individual articles
- `/biljetter`, `/guldspaden`, `/kurs`, `/stipendier` - Other pages

## Deployment

### GitHub Pages (Current Setup)
The site is configured for GitHub Pages deployment. Clean URLs are achieved through extensionless HTML files (e.g., `om-oss`, `kontakt`) that GitHub Pages serves automatically.

**No configuration needed** - just push to the main branch and GitHub Pages will serve the files.

### Apache Server (Alternative)
If deploying to an Apache server, the included `.htaccess` file provides:
- URL rewriting to map clean URLs to physical files
- 301 redirects from old `stil2-*.html` URLs to new clean URLs
- UTF-8 charset configuration

**Requirement**: Apache mod_rewrite must be enabled.

## File Structure
- `index.html` - Homepage
- `stil2-*.html` - Original HTML files with technical naming
- Extensionless files (`om-oss`, `kontakt`, etc.) - Clean URL versions for GitHub Pages