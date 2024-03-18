ALTER TABLE singer RENAME TO musician;

ALTER TABLE album DROP FOREIGN KEY FK_A_singerName;
ALTER TABLE musician DROP PRIMARY KEY;
ALTER TABLE musician RENAME COLUMN singerName TO musicianName;
ALTER TABLE musician ADD PRIMARY KEY (musicianName);
ALTER TABLE album ADD CONSTRAINT FK_A_singerName FOREIGN KEY (singerName) REFERENCES musician (musicianName);

ALTER TABLE musician ADD COLUMN role varchar(50), ADD COLUMN bandName varchar(50);
UPDATE musician SET role = "vocals", bandName = "Crazy Duo" WHERE musicianName = "Alina";
UPDATE musician SET role = "guitar", bandName = "Mysterio" WHERE musicianName = "Mysterio";
UPDATE musician SET role = "percussion", bandName = "Crazy Duo" WHERE musicianName = "Rainbow";
UPDATE musician SET role = "piano", bandName = "Luna" WHERE musicianName = "Luna";

CREATE TABLE IF NOT EXISTS band  (      bandName varchar(50),
                                        creation YEAR,
                                        genre varchar(50),
                                        PRIMARY KEY (bandName));
INSERT INTO band VALUES ("Crazy Duo", 2015, "rock"), ("Luna", 2009, "classical"), ("Mysterio", 2019, "pop");