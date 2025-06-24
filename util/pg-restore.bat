set PGPASSWORD=axelor&& type db\axelor-erp.sql | psql -U axelor axelor-erp 

rem below command worked, but above faster
rem set PGPASSWORD=axelor&& psql -U axelor -d axelor-erp -f db\axelor-erp.sql