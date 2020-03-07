DROP TABLE IF EXISTS tweet_mroonga;
CREATE TABLE tweet_mroonga (
  seq bigint(20) UNSIGNED NOT NULL PRIMARY KEY,
  txt text NOT NULL,
  FULLTEXT INDEX (txt)
) ENGINE=mroonga DEFAULT CHARSET=utf8mb4;

DROP TABLE IF EXISTS tweet_InnoDB;
CREATE TABLE tweet_InnoDB (
  seq bigint(20) UNSIGNED NOT NULL PRIMARY KEY,
  txt text NOT NULL,
  FULLTEXT INDEX (txt)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

insert into tweet_mroonga(seq,txt)values
( 1,'DZfo3jDe1QSLwX3HEtwQ')
,( 2,'4cb3eC9GQuLtnu')
,( 3,'2IIe3KIswEkPTJbQ22q9Um')
,( 4,'KdbhVvwlScGFjr0Xu4YnVHFpOgwoPq');
commit;

insert into tweet_InnoDB(seq,txt)values
( 1,'DZfo3jDe1QSLwX3HEtwQ')
,( 2,'4cb3eC9GQuLtnu')
,( 3,'2IIe3KIswEkPTJbQ22q9Um')
,( 4,'KdbhVvwlScGFjr0Xu4YnVHFpOgwoPq');
commit;

SELECT * FROM tweet_mroonga WHERE MATCH(txt) AGAINST("4");

SELECT * FROM tweet_InnoDB WHERE MATCH(txt) AGAINST("4");
