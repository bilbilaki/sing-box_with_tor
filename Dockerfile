FROM golang:1.20.2-bullseye

COPY ./build.sh /build.sh

RUN apt-get update \
    && apt-get install -y git gcc libssl-dev libevent-dev libz-dev \
    && sh /build.sh