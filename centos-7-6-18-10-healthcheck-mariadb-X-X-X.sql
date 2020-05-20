show databases;

select user();

select version();

show variables like 'char%';

select 'うんこ';

drop table if exists test_tbl;

create table test_tbl as select 'うんこ' as col  union all select 'もりもり' union all select '森鴎外';

select * from test_tbl;

drop table if exists products;

CREATE TABLE products (
  id INTEGER NOT NULL PRIMARY KEY AUTO_INCREMENT
  ,name VARCHAR(255) NOT NULL
  ,price DECIMAL(10,0) NOT NULL
  ,stock INTEGER NOT NULL
  ,attr JSON
  ,CHECK (JSON_VALID(attr))
);


INSERT INTO products VALUES(NULL, 'Jeans', 6478, 500, NULL);

INSERT INTO products VALUES(NULL, 'Shirt', 4999, 30, '{"size": 42, "color": "white"}');

INSERT INTO products VALUES(NULL, 'Blouse', 6469, 25, '{"color": "white"}');


SELECT * FROM products;


