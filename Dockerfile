FROM redis
MAINTAINER bhw1994 <bhw1994@gmail.com>

ADD ./data/redis.conf /data/redis.conf    
ADD ./data/docker-entrypoint.sh /data/docker-entrypoint.sh

EXPOSE $CLIENTPORT

ENTRYPOINT ["/data/docker-entrypoint.sh"] 
CMD [ "redis-server", "/data/redis.conf" ]
