# Liturgical Companion for KOReader

**The day's liturgy, one tap away while you read.**

Liturgical Companion is a small offline plugin for [KOReader](https://koreader.rocks).
Open it on any day to see:

- **the liturgical day**: its full name, rank, colour, season and year cycle
- **the saints and martyrs** celebrated, with each one's rank
- **the Mass readings** for every Mass of the day (Vigil, Night, Dawn, Day…)
- **the Office of Readings** second reading: author and work
- **the Gospel commentary**: which Fathers the Catena Aurea quotes on the day's Gospel

<p align="center">
  <img src="https://github.com/mabbamOG/liturgical-companion.koplugin/releases/download/v0.1.1/panel-christmas.png" alt="The daily panel in KOReader: Christmas in the U.S.A. calendar" width="420">
</p>

It works fully offline, with no account and no network access, and is built for
e-ink (Kindle, Kobo, PocketBook, Android).

## Screenshots

<table>
  <tr>
    <td align="center"><img src="https://github.com/mabbamOG/liturgical-companion.koplugin/releases/download/v0.1.1/panel-weekday.png" alt="A weekday with a memorial" width="260"><br><sub>A weekday: memorial, readings, commentary, Office</sub></td>
    <td align="center"><img src="https://github.com/mabbamOG/liturgical-companion.koplugin/releases/download/v0.1.1/panel-all-saints.png" alt="All Saints" width="260"><br><sub>A solemnity</sub></td>
    <td align="center"><img src="https://github.com/mabbamOG/liturgical-companion.koplugin/releases/download/v0.1.1/date-picker.png" alt="Date picker" width="260"><br><sub>Choose any date</sub></td>
  </tr>
  <tr>
    <td align="center"><img src="https://github.com/mabbamOG/liturgical-companion.koplugin/releases/download/v0.1.1/menu.png" alt="Plugin menu" width="260"><br><sub>Tools → More tools → Liturgical companion</sub></td>
    <td align="center"><img src="https://github.com/mabbamOG/liturgical-companion.koplugin/releases/download/v0.1.1/menu-country.png" alt="Country setting" width="260"><br><sub>Choose your calendar</sub></td>
    <td align="center"><img src="https://github.com/mabbamOG/liturgical-companion.koplugin/releases/download/v0.1.1/country-picker.png" alt="Viewing another country" width="260"><br><sub>🌐 View the day in another country</sub></td>
  </tr>
</table>

## Install

**With [AppStore](https://github.com/omer-faruq/appstore.koplugin):** search for
*liturgical-companion* and choose **Install**.

**By hand:**

1. Download **`liturgical-companion.koplugin-vX.Y.Z.zip`** from the
   [latest release](https://github.com/mabbamOG/liturgical-companion.koplugin/releases/latest).
2. Unzip it into KOReader's `plugins` folder, so you get
   `koreader/plugins/liturgical-companion.koplugin/`.
3. Restart KOReader.

## Use

Open any book, then go to **Tools → More tools → Liturgical companion**:

| Menu item | What it does |
|---|---|
| **Today's references** | Opens the panel for today |
| **Choose a date…** | Opens the panel for any date |
| **Country** | Sets your calendar and its language |
| **Announce the day when opening a Bible** | Optional tappable notice when you open a Bible |

The row at the bottom of the panel:

| 🌐 | « | Day | » | Close |
|---|---|---|---|---|
| View this day in another country (just for now) | Previous day | Pick a date | Next day | Close |

Tip: add *Liturgical companion: today* to a gesture in
**Tools → Gesture manager**.

## Calendars

The **General Roman Calendar** (in Latin) and 27 national calendars, each shown
in its own language: Argentina, Australia, Bolivia, Canada, Chile, China,
Costa Rica, Deutschland, España, France, Guatemala, India, Ireland, Italia,
México, New Zealand, Österreich, Panamá, Paraguay, Perú, Philippines, Polska,
Puerto Rico, Scotland, U.S.A., Uruguay, Venezuela.

Languages: English, Latin, Italian, German, French, Spanish, Polish and
Simplified Chinese. Years covered: **2026 and 2027**.

## About the data

- **References only.** The plugin shows names and citations: no Scripture
  text, no liturgical prose, no biographies. Pair it with the Bible you are reading.
- **Not an official liturgical book.** Check your diocese's Ordo for local feasts and
  transfers. U.S. readings come from the USCCB. Other calendars reuse the same
  readings where the celebration matches, and those readings are marked as
  computed rather than verified.
- Sources and licences are listed in [NOTICE](NOTICE).

## License

Plugin code: MIT ([LICENSE](LICENSE)). Data attributions: [NOTICE](NOTICE).
