# Changelog

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
