show engines;

SHOW VARIABLES LIKE 'mroonga_version';


drop table if exists diaries;

CREATE TABLE diaries (
  id INT PRIMARY KEY AUTO_INCREMENT
  ,content VARCHAR(255)
  ,FULLTEXT INDEX (content)
) ENGINE = Mroonga DEFAULT CHARSET utf8;


INSERT INTO diaries (content) VALUES ("It'll be fine tomorrow.");



INSERT INTO diaries (content) VALUES ("It'll rain tomorrow");


commit;


SELECT * FROM diaries WHERE MATCH(content) AGAINST("+fine" IN BOOLEAN MODE);



INSERT INTO diaries (content) VALUES ("It's fine today. It'll be fine tomorrow as well.");

INSERT INTO diaries (content) VALUES ("It's fine today. But it'll rain tomorrow.");


SELECT *,
       MATCH (content) AGAINST ("+fine" IN BOOLEAN MODE)
         FROM diaries
          WHERE MATCH (content) AGAINST ("+fine" IN BOOLEAN MODE)
           ORDER BY
                  MATCH (content) AGAINST ("+fine" IN BOOLEAN MODE) DESC;


SELECT *,
       MATCH (content) AGAINST ("+fine" IN BOOLEAN MODE) AS score
         FROM diaries
          WHERE MATCH (content) AGAINST ("+fine" IN BOOLEAN MODE)
           ORDER BY
                  MATCH (content) AGAINST ("+fine" IN BOOLEAN MODE) DESC;


SET NAMES utf8;

drop table if exists diaries;

CREATE TABLE diaries (
  day DATE PRIMARY KEY
  ,content VARCHAR(64) NOT NULL
  ,FULLTEXT INDEX (content)
) Engine=Mroonga DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO diaries VALUES ("2013-04-23", "ブラックコーヒーを飲んだ。");


SELECT *
  FROM diaries
   WHERE MATCH (content) AGAINST ("+ふらつく" IN BOOLEAN MODE);



SELECT *
  FROM diaries
   WHERE MATCH (content) AGAINST ("+ﾌﾞﾗｯｸ" IN BOOLEAN MODE);


SET NAMES utf8;

drop table if exists diaries;

CREATE TABLE diaries (
  day DATE PRIMARY KEY
  ,content VARCHAR(64) NOT NULL
  ,FULLTEXT INDEX (content) COMMENT 'normalizer "NormalizerAuto"'
) Engine=Mroonga DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;








INSERT INTO diaries VALUES ("2013-04-23", "ブラックコーヒーを飲んだ。");


SELECT *
  FROM diaries
   WHERE MATCH (content) AGAINST ("+ふらつく" IN BOOLEAN MODE);



SELECT *
  FROM diaries
   WHERE MATCH (content) AGAINST ("+ﾌﾞﾗｯｸ" IN BOOLEAN MODE);


SELECT mroonga_command('register token_filters/stem');

drop table if exists memos;

CREATE TABLE memos (
  id INT NOT NULL PRIMARY KEY
  ,content TEXT NOT NULL
  ,FULLTEXT INDEX (content) COMMENT 'normalizer "NormalizerAuto", token_filters "TokenFilterStem"'
) Engine=Mroonga DEFAULT CHARSET=utf8;


INSERT INTO memos VALUES (1, "I develop Groonga");

INSERT INTO memos VALUES (2, "I'm developing Groonga");

INSERT INTO memos VALUES (3, "I developed Groonga");


SELECT *
  FROM memos
   WHERE MATCH (content) AGAINST ("+develops" IN BOOLEAN MODE);


SELECT mroonga_command("register token_filters/stop_word");

drop table if exists terms;

CREATE TABLE terms (
  term VARCHAR(64) NOT NULL PRIMARY KEY
  ,is_stop_word BOOL NOT NULL
) Engine=Mroonga COMMENT='tokenizer "TokenBigram", token_filters "TokenFilterStopWord"' DEFAULT CHARSET=utf8;


drop table if exists memos;

CREATE TABLE memos (
  id INT NOT NULL PRIMARY KEY
  ,content TEXT NOT NULL
  ,FULLTEXT INDEX (content) COMMENT 'table "terms"'
) Engine=Mroonga DEFAULT CHARSET=utf8;


INSERT INTO terms VALUES ("and", true);

INSERT INTO memos VALUES (1, "Hello");


INSERT INTO memos VALUES (2, "Hello and Good-bye");


INSERT INTO memos VALUES (3, "Good-bye");


SELECT *
  FROM memos
   WHERE MATCH (content) AGAINST ('+"Hello and"' IN BOOLEAN MODE);


drop table if exists shops;


CREATE TABLE shops (
  id INT PRIMARY KEY AUTO_INCREMENT
  ,name VARCHAR(255)
  ,location POINT NOT NULL
  ,SPATIAL INDEX (location)
) ENGINE = Mroonga;



INSERT INTO shops VALUES (null, 'Nezu''s Taiyaki', GeomFromText('POINT(139.762573 35.720253)'));

INSERT INTO shops VALUES (null, 'Naniwaya', GeomFromText('POINT(139.796234 35.730061)'));

INSERT INTO shops VALUES (null, 'Yanagiya Taiyaki', GeomFromText('POINT(139.783981 35.685341)'));


commit;

SELECT id, name, AsText(location)
  FROM shops
   WHERE MBRContains(GeomFromText('LineString(139.7101 35.7292, 139.7662 35.6815)'), location);

