drop table test_tbl;
create table test_tbl (
  id integer
  ,item text
);
insert into test_tbl values (1, 'PostgreSQL is a relational database management system.');
insert into test_tbl values (2, 'Groonga is a fast full text search engine that supports all languages.');
insert into test_tbl values (3, 'PGroonga is a PostgreSQL extension that uses Groonga as index.');
insert into test_tbl values (4, 'There is groonga command.');
insert into test_tbl values (10, 'あいうえお');
insert into test_tbl values (11, 'かきくけこ');
insert into test_tbl values (12, 'さしすせそ');
insert into test_tbl values (13, 'たちつてと');
insert into test_tbl values (14, 'なにぬねの');
insert into test_tbl values (15, 'はひふへほ');
insert into test_tbl values (16, 'まみむめも');
insert into test_tbl values (17, 'やゆよ');
insert into test_tbl values (18, 'らりるれろ');
insert into test_tbl values (19, 'わをん');

commit;


select * from test_tbl;

select count(*) from test_tbl;
