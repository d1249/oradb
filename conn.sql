REM connect to DBMS
prompt
prompt Connection to &user/*****@&connect_identifier...
REM conn &proxy_user[&1]/&password@&connect_identifier
conn &user/&password@&connect_identifier
@settings
REM define schema = &1
prompt Connected to &user successfull.