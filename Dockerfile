FROM ubuntu:bionic-20200112

RUN apt-get update && apt-get upgrade -y \
    && apt-get install -y build-essential

COPY . predixy

RUN cd predixy \
    && make \
    && mv src/predixy /usr/local/bin

