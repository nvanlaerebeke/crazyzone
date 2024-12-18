# Redis

There is a backend redis service available for services to use.  
To use this service use the `redis-master.services.svc.cluster.local` DNS name.  
Redis is also secured with a password, to only services that allow a password to be set for redis are supported.

## Warning: Conflicts

Redis is a key-value store, when multiple services are using this redis instance there is a possibility that conflicts will occur, make sure to only use services that prefix their keys.

## Connecting to Redis

```console
export SERVICE_REDIS_PASSWORD=`kubectl get secret redis-password -n services -o jsonpath='{.data.redis-password}' | base64 -d | tr -d '\n'`
kubectl run redis-client --rm --tty -i --restart='Never' --namespace services --image bitnami/redis --env="REDISCLI_AUTH=$SERVICE_REDIS_PASSWORD" --command -- bash
```

To connect to the redis server, run:

```console
redis-cli -h redis-master.services.svc.cluster.local 
AUTH default <password>
```

## Redis Database List

| Index |      Service      |
| ----- | ----------------- |
| 0     |                   |
| 1     | netbox-tasks      |
| 2     | netbox-caching    |
| 3     | gitea             |
| 4     | harbor-core       |
| 5     | harbor-job        |
| 6     | harbor-registry   |
| 7     | harbor-trivy      |
| 8     | harbor-db         |
| 9     | harbor-cache      |
| 10    |                   |
