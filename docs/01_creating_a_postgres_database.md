# Creating a new PostgreSQL Database

## Setting up a new User and Database

### Connecting to the Database

Launch a client that logs into the database as the postgres user:

```console
export SERVICE_POSTGRES_PASSWORD=`kubectl get secret postgresql-password -n services -o jsonpath='{.data.postgres-password}' | base64 -d | tr -d '\n'`
kubectl run postgresql-postgresql-client --rm --tty -i --restart='Never' --namespace services --image bitnami/postgresql --env="PGPASSWORD=$SERVICE_POSTGRES_PASSWORD" --command -- psql --host postgresql -U postgres -d postgres
```

The database is also reachable externally on port `30000`, to connect that way:

```console
psql -h home.crazyzone.be -p 30000 -U postgres -W
```

### Creating the User and Database

Create the database and user:

```sql
-- Create a new PostgreSQL user (replace '<user>' and '<password>' with your desired username and password)
CREATE USER <user> WITH PASSWORD '<password>';

-- Create a new database (replace '<database>' with your desired database name)
CREATE DATABASE <database>;

-- Grant the user access to the new database
GRANT ALL PRIVILEGES ON DATABASE <database> TO <user>;
```

## Accessing the Database from different namespaces

As services that will be running in different namespaces will need to access this database, the correct DNS name must be used.  

In kubernetes the DNS name is `<service-name>.<namespace>.svc.cluster.local`, so in this case this will be `postgresql.services.svc.cluster.local`.  
The port the service runs on is the default `5432` port for internal use, externally this is reachable on port `30000`.
