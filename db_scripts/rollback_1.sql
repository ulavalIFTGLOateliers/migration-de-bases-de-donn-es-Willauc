DROP TABLE IF EXISTS band;

ALTER TABLE musician DROP COLUMN role, DROP COLUMN bandName;

ALTER TABLE album DROP FOREIGN KEY FK_A_singerName;
ALTER TABLE musician DROP PRIMARY KEY;

ALTER TABLE musician RENAME COLUMN musicianName TO singerName;

ALTER TABLE musician ADD PRIMARY KEY (singerName);
ALTER TABLE album ADD CONSTRAINT FK_A_singerName FOREIGN KEY (singerName) REFERENCES musician (singerName);

ALTER TABLE musician RENAME TO singer;