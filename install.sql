REM start the task script

define tsk = &1
REM define proxy_user = &2
define user = &2
define password = &3
define connect_identifier = &4
undefine 1
undefine 2
undefine 3
undefine 4

@settings
spool _tasks/logs/&tsk..log

WHENEVER SQLERROR exit
WHENEVER OSERROR exit

prompt ================= &tsk BEGIN...

@conn
@_tasks/&tsk

prompt ================= &tsk END.
prompt

spool off
set echo off
exit 0