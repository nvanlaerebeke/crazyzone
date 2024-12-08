# Redis

There is a backend redis service available for services to use.  
To use this service use the `redis-master.services.svc.cluster.local` DNS name.  
Redis is also secured with a password, to only services that allow a password to be set for redis are supported.

## Warning: Conflicts

Redis is a key-value store, when multiple services are using this redis instance there is a possibility that conflicts will occur, make sure to only use services that prefix their keys.
