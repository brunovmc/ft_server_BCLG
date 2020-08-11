FROM debian:buster

RUN apt-get update && \
    apt-get -y upgrade && \
    apt-get install -y  nginx \
    mariadb-server 	

COPY srcs /root/

RUN bash /root/server-config.sh

ENTRYPOINT bash /root/start.sh

CMD bash

