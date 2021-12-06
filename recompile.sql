REM recompile objects after making
set lin 150
set head on
col owner for a30
col object_name for a30
prompt invalid before:
select t.owner, t.object_type, t.object_name
from all_objects t
where t.status != 'VALID'
and t.owner = user
order by owner;

prompt recompile...
begin
-- sys.utl_recomp.recomp_serial(user);
dbms_utility.compile_schema(user, false);
end;
/
prompt invalid after:
select t.owner, t.object_type, t.object_name
from all_objects t
where t.status != 'VALID'
and t.owner = user
order by owner;