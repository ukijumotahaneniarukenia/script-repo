select user();

select version();

with sub as(
    select '[{"x":"8"},{"x":"3"},{"x":"4"}]' as rsv_args
)
select s1.rsv_args,s2.ele
from
  sub s1,json_table(
    rsv_args,
    "$[*]" columns(
      ele longtext path "$.x"
    )
  ) as s2;

drop table test_tbl;

create table test_tbl (id int,item text);

insert into test_tbl values(1,'うんこ');
insert into test_tbl values(2,'もりもり');
insert into test_tbl values(3,'森鴎外');

commit;

select * from test_tbl;

select count(*) from test_tbl;
