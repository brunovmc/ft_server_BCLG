FROM debian:buster

RUN apt-get update && apt-get -y upgrade 

COPY srcs /root/

CMD bash

