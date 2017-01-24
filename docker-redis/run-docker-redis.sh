docker pull redis
docker run -p 6379:6379 -v /data/redis/redis.conf:/usr/local/etc/redis/redis.conf -v /data/redis:/data --name redis-container -d redis redis-server /usr/local/etc/redis/redis.conf
