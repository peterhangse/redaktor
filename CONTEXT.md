# CONTEXT.md — redaktor (redaktör.se)

**"REDAKTÖR"** — den grävande journalistens verktygslåda: statisk landnings- och
verktygsplats som presenterar journalistikverktyg (Kommunkoll, Rättstavaren,
Din idé), rekommenderade externa AI-verktyg samt om-oss/kontakt/nyhetsbrev och
en Guldspaden-sida. Live: **redaktör.se** (CNAME `xn--redaktr-f1a.se`) via
GitHub Pages (GitHub Actions).

## Teknik (verifierat)

- **Ren statisk HTML/CSS + minimal inline-JS.** Inget ramverk, ingen build,
  ingen package.json.
- **Ingen delad CSS-fil** — hela `:root`-design-tokenblocket är kopierad inline
  i varje sida (~14 filer). En designändring måste kopieras för hand till alla.
- Google Fonts (Oswald + Source Sans 3). `.nojekyll` + workflow `static.yml`
  (configure/upload/deploy-pages) deployar på push till main.
- Enda externa tjänster: **Formspree** (nyhetsbrev `xovgrkov`, kontakt `xdkqbpdl`).

## Struktur

```
index.html — startsida (hero, box-länkar, rekommenderade verktyg, nyheter)
om-oss/ kontakt/ nyheter/ prenumerera/ verktyg/ samarbetspartners/
guldspaden/ kommunkoll/ rattstavaren/ din-ide/ artikel-1/ … artikel-4/
  — varje mapp = en clean-URL-sida (folder/index.html)
artikel-N — längre guider om NotebookLM, Rixdagen.se, Perplexity AI, Otter.ai
stil2-*.html (13) — äldre platta legacy-sidor (döda)
CNAME (xn--redaktr-f1a.se), .nojekyll, .github/workflows/static.yml
test-urls.sh — curl-smoketest av clean-URL:er
```

## Funktioner

- Hero "Grävande journalister"; Verktyg = projektkort (Kommunkoll, Rättstavaren,
  Din idé); Nyheter + kontakt + nyhetsbrev (Formspree, GDPR-ackordeon);
  Guldspaden 2024; Samarbetspartners "Bli en Partner".
- Alla interna länkar är absoluta clean-URL:er med trailing slash
  (`/verktyg/`), serverade som `folder/index.html`.

## Köra / deploya

- Lokalt: `python3 -m http.server 8000` + `./test-urls.sh`.
- Deploy: push till `main` → Actions → `redaktör.se`.

## Gotchas (verifierat mot koden)

- README och `test-urls.sh` refererar sidor som **inte finns längre**
  (`/projekt/`, `/biljetter/`, `/kurs/`, `/stipendier/`) — smoketesten som
  skrivet kommer misslyckas på de länkarna.
- `stil2-*.html` (13 filer) är döda: inga nav-länkar, pekar på obefintlig
  `/projekt`-sökväg.
- `PRENUMERERA_SETUP.md` säger "setup required" men Formspree-endpointen är
  redan aktiv.
- Ingen delad CSS → duplicerad stil med risk för drift.

## Notis

Detta är verktygs/-landningssajten, inte en tidnings-layoutdemo.