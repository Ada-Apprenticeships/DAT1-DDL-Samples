.open .open 1_artists/refActionsPractice.sqlite
-- switching on referential integrity rules (foreign key rules)
PRAGMA foreign_keys = ON;

-- delete the tables so it can be re-created every time

DROP TABLE IF EXISTS track;
DROP TABLE IF EXISTS artist;

CREATE TABLE artist (
    artistID INTEGER PRIMARY KEY NOT NULL,
    artistname TEXT
);

CREATE TABLE track (
    trackID INTEGER PRIMARY KEY NOT NULL,
    trackname TEXT,
    trackartist INTEGER,
    FOREIGN KEY (trackartist) REFERENCES artist(artistID) ON DELETE CASCADE
);

INSERT INTO artist (artistname)
VALUES ('Dean Martin'),
        ('Frank Sinatra');

--INSERT INTO track
INSERT INTO track (trackname, trackartist)
VALUES ('That’s Amore’, 1),
        ('Christmas Blues', 1),
        ('My Way', 2);

SELECT * FROM artist;
SELECT * FROM track;