set "currentDate=%date:~-4,4%%date:~3,2%%date:~0,2%"
ren db\axelor-erp.sql db\axelor-erp-%currentDate%.sql
set PGPASSWORD=axelor&& pg_dump --clean -U axelor -d axelor-erp -f db\axelor-erp.sql