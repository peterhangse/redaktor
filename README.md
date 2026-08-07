# REDAKTÖR

En svensk journalistikwebbplats publicerad på [redaktör.se](https://xn--redaktr-f1a.se) via GitHub Pages. Sajten riktar sig till journalister och redaktörer och samlar nyheter, verktyg, artiklar om AI-hjälpmedel, priset Guldspaden med mera.

---

## Om projektet

**REDAKTÖR** är en statisk webbplats byggd med ren HTML och CSS, utan ramverk eller byggverktyg. All stil definieras med CSS-variabler direkt i varje sida. Sajten hostas kostnadsfritt via GitHub Pages med ett anpassat domännamn.

---

## Teknik

| Teknik | Användning |
|---|---|
| **HTML5** | Alla sidor — ren statisk HTML |
| **CSS (inline per sida)** | Styling med delade CSS-variabler |
| **Google Fonts** | `Oswald` (rubriker) + `Source Sans 3` (brödtext) |
| **GitHub Pages** | Hosting och publicering |
| **Formspree** | Hantering av nyhetsbrevs-formulär |

### Designsystem

Varje sida använder ett gemensamt set CSS-variabler:

```css
--primary:   hsl(345, 63%, 30%)  /* vinröd/mörkröd */
--font-heading: 'Oswald', sans-serif
--font-body:    'Source Sans 3', sans-serif
```

Layouten bygger på en fast navigeringsbar högst upp, breda hero-sektioner och responsiva rutnät.

---

## Struktur

```
redaktor/
│
├── index.html                  ← Startsida
├── CNAME                       ← Anpassad domän: xn--redaktr-f1a.se
│
├── Sidor (varje mapp = en ren URL)
│   ├── om-oss/                 ← Om oss
│   ├── kontakt/                ← Kontakt
│   ├── nyheter/                ← Nyheter
│   ├── prenumerera/            ← Nyhetsbrev (Formspree)
│   ├── verktyg/                ← Verktyg för journalister
│   ├── guldspaden/             ← Guldspaden 2024
│   ├── kommunkoll/             ← Kommunkoll
│   ├── rattstavaren/           ← Rättstavaren
│   ├── samarbetspartners/      ← Samarbetspartners
│   ├── din-ide/                ← Skicka in din idé
│   │
│   ├── artikel-1/              ← Artikel: NotebookLM
│   ├── artikel-2/              ← Artikel: Riksdagen.se
│   ├── artikel-3/              ← Artikel: Perplexity AI
│   └── artikel-4/              ← Artikel: Otter.ai
│
├── stil2-*.html                ← Reservkopior av sidor (används ej aktivt)
├── test-urls.sh                ← Röktest — kontrollerar att alla URL:er ger HTTP 200
├── PRENUMERERA_SETUP.md        ← Guide för att konfigurera Formspree
└── URL_FIX_SUMMARY.md          ← Anteckningar om URL-omstruktureringen
```

### Varför mappar i stället för .html-filer?

GitHub Pages är en statisk värd och stödjer inte `.htaccess` eller server-side URL-omskrivning. Att lägga varje sida i en egen mapp som `om-oss/index.html` är det inbyggda sättet att få rena URL:er utan filnamnstillägg:

```
https://redaktör.se/om-oss/   →   om-oss/index.html
https://redaktör.se/kontakt/  →   kontakt/index.html
```

---

## Nyhetsbrev

Sidan `/prenumerera/` innehåller ett e-postformulär med:
- GDPR-anpassad integritetspolicy
- Formspree-integration för e-posthantering på en statisk sajt

**Kräver konfiguration:** Formuläret fungerar inte förrän Formspree är konfigurerat. Se `PRENUMERERA_SETUP.md` för instruktioner.

---

## Driftsättning

### GitHub Pages
Ingen konfiguration krävs — pusha till `main`-grenen så publiceras sajten automatiskt.

### Lokal testning

```bash
# Starta en lokal webbserver
python3 -m http.server 8000
# Besök http://localhost:8000

# Kör automatiskt röktest (lokalt):
./test-urls.sh

# Kör röktest mot produktionssajten:
./test-urls.sh https://xn--redaktr-f1a.se
```

### Checklista vid testning

1. ✅ Alla URL:er avslutas med `/`
2. ✅ Inga `.html`-tillägg syns i adressfältet
3. ✅ Sidor laddas utan 404-fel
4. ✅ Navigeringslänkar fungerar
5. ✅ Testa i privat/inkognitoläge för att undvika cacheproblem

### Felsökning

- Rensa webbläsarens cache (gamla URL:er kan vara cachade)
- Testa i inkognitoläge
- Kontrollera att GitHub Pages-driftsättningen slutförts (fliken Actions)
- Verifiera att DNS för den anpassade domänen är korrekt konfigurerad