# REDIS

## To start Redis "standard"

    docker run --name redis-server -e "REDIS_CONF=redis.conf" -t -p 26379:6379 hbouvier/docker-redis


## To start Redis in "LRU-Cache"

    docker run --name redis-lru -e "REDIS_CONF=lru.conf" -t -p 36379:6379 hbouvier/docker-redis

