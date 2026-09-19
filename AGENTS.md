# AGENTS.md — redaktor

**Läs `CONTEXT.md` först** innan du ändrar något.

## Kontrakt

- Ändrar du struktur eller innehåll: **uppdatera `CONTEXT.md` i samma commit**.
- Ren statisk HTML — inget ramverk/build utan att fråga.
- **Det finns ingen delad CSS**: varje mapp-sida har den fulla design-tokenblocket
  inline. Vid designändring uppdatera ALLA sidor, annars blir stilen skeiv.
- Rör inte `stil2-*.html` annat än för att radera.
- `test-urls.sh` pekar på sidor som tagits bort (`/projekt/`, `/biljetter/`,
  `/kurs/`, `/stipendier/`) — laga scriptet om du bygger om inhaltslistan.
- Deploy = push till main (GitHub Actions → redaktör.se).