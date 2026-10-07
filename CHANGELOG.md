# Changelog

## v0.4.11 (2026-10-07)

- The package with the embedded texts and pictures is now called
  "-embedded-content" (it was "-texts"); the plain package stays references
  only.

## v0.4.10 (2026-10-06)

- A saint's day outranked by a Sunday or another day below the proper
  solemnities now also shows its Mass "where kept as a solemnity": in churches
  dedicated to the saint, where the saint is principal patron, and in the
  saint's religious family (General Norms 59). For example, St Francis on
  Sunday 4 October 2026, with Galatians 6:14-18 and Matthew 11:25-30, as
  celebrated by Franciscans. A saint whose own readings the companion lacks
  takes those of its Common, which the panel names.
- Pictures for Christmas, Easter and Pentecost (public-domain paintings), and
  eight more saints whose picture shows a church, an altar or a manuscript.

## v0.4.9 (2026-10-06)

- Pictures of the saints and feasts (texts package): the day's celebration
  shows its picture under its name, and every other celebration of the day can
  be tapped to show its own. 465 celebrations have one, from Wikimedia Commons
  (public domain or open licences, credited under each picture). A new menu
  entry turns them off.

## v0.4.8 (2026-10-02)

- The Rosary of the day at the bottom of each day: its five mysteries with
  their Gospel passages (tap to read them in English). Choose the scheme in
  the menu: with the Mysteries of Light (2002), traditional (fifteen
  mysteries, Sundays by season), or none.
- With the texts installed, the Rosary's prayers and the Litany of Loreto
  (with the 2018 and 2020 invocations) open under it, in English, Italian,
  French, Spanish, German and Portuguese (vatican.va) and Latin. The Litany
  can be turned off in the menu.

## v0.4.7 (2026-10-02)

- English: each Mass reading can be tapped to show its text (World English
  Bible, Catholic edition, public domain), and tapped again to hide it. The text
  is numbered as the Lectionary cites it and names its source. A new menu entry
  turns the texts off.

## v0.4.6 (2026-10-02)

- The Gospel's patristic chain is labelled "Catena Aurea".
- Groundwork for embedded texts: the English Bible (World English Bible,
  Catholic edition, public domain) is bundled in texts/, mapped onto the
  Lectionary's verse numbering; every Lectionary citation resolves to its text
  (not shown yet).
- Fixed three Lectionary citations (Numbers 14, Hebrews 4:12).

## v0.4.5 (2026-10-02)

- No known gaps remain. Christ the Eternal High Priest (15 national calendars)
  has the Spanish Lectionary's readings, one set per Sunday cycle; the Second
  Sunday after Christmas has its Office of Readings (Basil, On the Holy Spirit),
  as in the Italian Liturgia delle Ore.

## v0.4.4 (2026-10-01)

- Tested in KOReader on Linux and macOS: every calendar in every language, every
  Missal edition, the menus and the panel's buttons (no change on screen).

## v0.4.3 (2026-10-01)

- Translations not yet reviewed by a native speaker are marked as drafts in the
  tables (`-- draft`), so reviewers can find them; nothing changes on screen.
- The README lists the Missal edition and Language settings and the eleven
  languages.
- Source data headers point to where their origins now live (the former Python
  project is parked in the repository under `parked/epub/`).

## v0.4.2 (2026-10-01)

- **Every name is translated in every language**: celebration titles, the
  Office of Readings' authors and works, and the pre-1970 Missal titles now
  exist in all eleven languages (Russian and Chinese had no celebration
  titles; most pre-1970 titles showed in Latin). Nothing falls back to
  English any more, and the check is strict.
- English: the Office's authors and works read as names ("Bernard of
  Clairvaux", not "Bernard, abbot"), and the pre-1970 titles that showed in
  Latin or with Divinum Officium's typos are corrected.
- Italian: St Thérèse's reading comes from the *Manoscritti autobiografici*.

## v0.4.1 (2026-10-01)

- **Every Mass has its readings and every day its Office of Readings**, in
  every calendar and Missal edition, for any year: the Lectionary is completed
  from the full 1998/2002 Lectionary tables (cycles the old data never showed:
  Sundays of Ordinary Time displaced by Lent, Advent weekdays, Christmas
  weekdays, Ascension year C...), and national feasts without readings of their
  own take their Common's, which the panel names. Two gaps remain, listed in
  `source/gaps.lua` (Christ the Eternal High Priest's readings; the Office of
  the Second Sunday after Christmas).
- Four weekdays showed a saint's gospel (St Martha's, the Guardian Angels');
  the patrons of Europe now keep their proper readings wherever they are kept;
  the Vigils of the Epiphany and the Ascension show the day's readings.
- Office of Readings: the Fourth Sunday of Advent takes the reading of its date;
  Thursday of the 6th week of Easter (Ascension on Sunday) St Leo's sermon;
  some 90 national saints and Marian feasts their Common's.
- Low Sunday in the 1955 Missal is ranked; 5 July in the 1570 Missal has its
  readings.

## v0.4.0 (2026-10-01)

- **New engine.** Every day is now an *entry* computed by a pure-Lua engine
  (`litcomp/`) from curated source data (`source/`): the calendars, the
  Lectionary, the Office of Readings, the Catena and the pre-1970 Missals.
  The panel and menus (`koreader/`) only present entries.
- **Every word comes from a translation table** (`i18n/`, 11 languages) by tag,
  so a day reads the same in every language. A Language setting chooses the
  panel's language (default: the calendar's own).
- **Office of Readings:** each day's reading is assigned by key, no longer by
  matching saints' names: the readings that went to the wrong saint (Birth of
  Mary on St Joseph's day, Triumph of the Cross on St John of the Cross) or to
  none are fixed; memorials without a proper reading take their Common's.
- **Advent when Christmas is a Sunday** (2022, 2033...) now begins four
  Sundays before it; it began a week late, shifting the last weeks of the year.
- **Readings:** Holy Thursday, Corpus Christi and other days with Psalm 116 or
  147 had no readings in the Latin and Italian calendars; psalm numbers now
  convert across every split psalm. Readings copied from one year's weekday
  under a saint are gone. Every calendar now shows the Catena.
- National titles ("Saint Benedict, Patron of Europe") and holy days of
  obligation are shown; the Easter Vigil and the rites of Good Friday and Holy
  Saturday are named.
- A pre-1970 Missal with a national calendar shows the General Roman Calendar
  in the national language, with a notice.

## v0.3.1 (2026-10-01)

- **Office of Readings:** the second reading is now found for St Thérèse of
  the Child Jesus (1 October), St Teresa of Ávila, St Alphonsus Liguori,
  St Turibius of Mogrovejo, the Seven Holy Founders, St John Damascene and
  St Peter Canisius, whose names the index spells differently.
- Gaudete and Laetare Sundays show rose or violet, in every edition.
- A second optional memorial on the same day (e.g. St Margaret of Antioch in
  Germany, 20 July 2027) shows the weekday readings like the first.
- Older editions: All Souls shows its name, and its second and third Masses
  their own readings, without Gloria or Creed; the 1960 Ember Saturdays show
  their longer and shorter forms.
- Dates start on 15 October 1582, the first Gregorian day; the Missal of
  Paul VI can be fixed from 1969.

## v0.3.0 (2026-09-30)

- **Missal editions.** By default each day follows the Roman Missal in force on
  that date: the Missal of Paul VI from Advent 1969, and before it the 1962,
  1955, 1954, 1939, 1906, 1888 and 1570 editions, each with its own calendar,
  ranks, colours and one-year cycle of Epistles and Gospels. A new setting
  (Missal edition) can fix one edition, e.g. the 1962 Missal for the
  Traditional Latin Mass.
- Any date from 15 October 1583 (the first Gregorian day) to 9999; the date
  picker keeps to the range of the chosen edition.
- The older editions are reproduced exactly from Divinum Officium's rubrics
  (checked on 358,190 days across all seven editions) and show the General
  Roman Calendar.
- The globe's country list opens on top of the panel, like the date picker:
  closing it returns to the day you were viewing.
- The Missal edition menu follows KOReader's interface language.

## v0.2.0 (2026-09-30)

- Every day is now computed on the device from the liturgical rules and small
  reference tables, instead of being read from stored per-day data: any year
  from 1900 to 2200, and the plugin is about a twentieth of its former size.
- The engine reproduces the previous per-day data for 2026-2027 in every
  calendar, and matches the project's Python generator for every other year it
  was checked against.
- A memorial without its own readings now always shows the weekday readings.
- The country list marks the country being viewed (bold, with a check mark)
  and opens on its page; the date picker spans every supported year.

## v0.1.1 (2026-09-30)

- Compact panel: lines within a section (the day, each Mass, the Office
  reading) no longer have empty lines between them; sections stay spaced.
- Country lists and the About box are sorted by name, with the General Roman
  Calendar first.
- The Catena line is hidden when a Gospel has no commentary.

## v0.1.0 (2026-09-30)

First release.

- Offline daily panel: the liturgical day, saints and martyrs, the Mass
  readings of every Mass, the Office of Readings second reading, and the
  Catena Aurea commentary reference.
- Navigation row: other country (temporary), previous day, date picker, next day.
- Optional tappable notice when you open a Bible.
- General Roman Calendar (Latin) and 27 national calendars, 2026-2027, each in
  its own language (English, Latin, Italian, German, French, Spanish, Polish,
  Simplified Chinese).
- Data split per country and loaded on demand to keep memory low on e-readers.
