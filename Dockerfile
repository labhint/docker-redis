FROM registry:0.8.1

RUN apt-get update -y
RUN apt-get install -y redis-server

RUN rm -f /etc/redis/redis.conf
ADD ./config /etc/redis/

# Define mountable directories.
VOLUME [ "/var/run/redis", "/var/log/redis", "/var/lib/redis" ]

# Define working directory.
WORKDIR /tmp

ENV REDIS_CONF redis.conf

CMD redis-server /etc/redis/${REDIS_CONF}

# Expose ports.
EXPOSE 6379
