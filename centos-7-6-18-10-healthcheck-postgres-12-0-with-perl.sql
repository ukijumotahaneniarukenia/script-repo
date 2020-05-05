select * from pg_available_extensions;

--拡張を継承したファンクション等もカスケード削除されるので、drop functionしなくてもOK
drop extension plperl cascade;

select * from pg_available_extensions;

create extension plperl;

select * from pg_available_extensions;

select n from generate_series(1,5) as t(n);

create or replace function perl_set_int(int)
returns setof integer
as $$
    return [0..$_[0]];
$$ language plperl;

select n,perl_set_int(n) from generate_series(1,5) as t(n);
