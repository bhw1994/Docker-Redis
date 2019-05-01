FROM redis
MAINTAINER bhw1994 <bhw1994@gmail.com>

ADD ./data/redis.conf /boyj/redis.conf    
ADD ./data/docker-entrypoint.sh /boyj/docker-entrypoint.sh

EXPOSE $CLIENTPORT

ENTRYPOINT ["/boyj/docker-entrypoint.sh"] 
CMD [ "redis-server", "/boyj/redis.conf" ]
