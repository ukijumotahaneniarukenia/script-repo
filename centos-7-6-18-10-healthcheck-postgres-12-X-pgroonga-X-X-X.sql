DROP TABLE test_tbl;
CREATE TABLE test_tbl (
  id integer,
  item text
);
CREATE INDEX pgroonga_item_idx ON test_tbl USING pgroonga (item);
INSERT INTO test_tbl VALUES (1, 'PostgreSQL is a relational database management system.');
INSERT INTO test_tbl VALUES (2, 'Groonga is a fast full text search engine that supports all languages.');
INSERT INTO test_tbl VALUES (3, 'PGroonga is a PostgreSQL extension that uses Groonga as index.');
INSERT INTO test_tbl VALUES (4, 'There is groonga command.');
INSERT INTO test_tbl VALUES (10, 'あいうえお');
INSERT INTO test_tbl VALUES (11, 'かきくけこ');
INSERT INTO test_tbl VALUES (12, 'さしすせそ');
INSERT INTO test_tbl VALUES (13, 'たちつてと');
INSERT INTO test_tbl VALUES (14, 'なにぬねの');
INSERT INTO test_tbl VALUES (15, 'はひふへほ');
INSERT INTO test_tbl VALUES (16, 'まみむめも');
INSERT INTO test_tbl VALUES (17, 'やゆよ');
INSERT INTO test_tbl VALUES (18, 'らりるれろ');
INSERT INTO test_tbl VALUES (19, 'わをん');

\d+ test_tbl

SELECT * FROM test_tbl WHERE item &@~ 'PGroonga OR PostgreSQL';
explain SELECT * FROM test_tbl WHERE item &@~ 'PGroonga OR PostgreSQL';

SELECT * FROM test_tbl WHERE item &@~ 'きく';
explain SELECT * FROM test_tbl WHERE item &@~ 'きく';

SELECT * FROM test_tbl WHERE item &@~ 'ウンコ';
INSERT INTO test_tbl VALUES (20, 'ウンコもりもり森鴎外');
SELECT * FROM test_tbl WHERE item &@~ 'ウンコ';

SELECT * FROM test_tbl WHERE item &@~ '森';
