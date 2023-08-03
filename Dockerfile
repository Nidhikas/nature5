FROM nginx

MAINTAINER "nidhikashyap168@gmail.com"

RUN apt-get update && apt-get upgrade -y && apt-get -y install net-tools


RUN useradd -m -d /home/barbie -s /bin/bash barbie
WORKDIR /home/barbie
ADD target/nature5.war .
WORKDIR /

ENTRYPOINT service nginx start && bash

