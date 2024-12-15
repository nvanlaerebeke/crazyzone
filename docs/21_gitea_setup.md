# Gitea Setup

For gitea a external postgres database is used.  
Sometimes when re-installing the init will remove the database config from the ini file.

Open the app.ini and re-add the following:

```ini
[database]
DB_TYPE = postgres
HOST = postgresql.services.svc.cluster.local:5432
NAME = gitea
PASSWD = <password>
USER = gitea
```