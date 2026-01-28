.open 1_artists/music.db
.mode column -- For Formatting Output in SQLite

PRAGMA foreign_keys = ON;

CREATE TABLE artist(
    artistid INTEGER PRIMARY KEY,
    artistname TEXT
);

CREATE TABLE track(
    trackid INTEGER,
    trackname TEXT,
    trackartist INTEGER,
    FOREIGN KEY(trackartist) REFERENCES artist(artistid)
);