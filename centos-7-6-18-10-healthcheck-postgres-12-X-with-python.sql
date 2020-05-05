select * from pg_available_extensions;

--拡張を継承したファンクション等もカスケード削除されるので、drop functionしなくてもOK
drop extension plpython3u cascade;

select * from pg_available_extensions;

create extension plpython3u;

select * from pg_available_extensions;

create or replace function get_version()
returns text
as $$
  import sys
  return str(sys.version_info.major)+'.'+str(sys.version_info.minor)+'.'+str(sys.version_info.micro)
$$ language plpython3u;

select get_version();
