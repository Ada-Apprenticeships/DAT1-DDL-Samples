.open 1_artists/music.db
.mode column -- For Formatting Output in SQLite

PRAGMA foreign_keys = ON; -- Since we are using or relying on foreign keys

.print "1) INSERT INTO track VALUES(14, 'Mr. Bojangles', 3);"
INSERT INTO track VALUES(14, 'Mr. Bojangles', 3);

.print ""
.print "2) INSERT INTO track VALUES(14, 'Mr. Bojangles', NULL);"
INSERT INTO track VALUES(14, 'Mr. Bojangles', NULL);

.print ""
.print "3) UPDATE track SET trackartist = 3 WHERE trackname = 'Mr. Bojangles';"
UPDATE track SET trackartist = 3 WHERE trackname = 'Mr. Bojangles';

.print ""
.print "4) INSERT INTO artist VALUES(3, 'Sammy Davis Jr');"
INSERT INTO artist VALUES(3, 'Sammy Davis Jr');
.print "   UPDATE track SET trackartist = 3 WHERE trackname = 'Mr. Bojangles';"
UPDATE track SET trackartist = 3 WHERE trackname = 'Mr. Bojangles';

.print ""
.print "5) INSERT INTO track VALUES(15, 'Boogie Woogie', 3);"
INSERT INTO track VALUES(15, 'Boogie Woogie', 3);

.print ""
.print "6) DELETE FROM artist WHERE artistname = 'Frank Sinatra';"
DELETE FROM artist WHERE artistname = 'Frank Sinatra';
