FROM debian:bookworm AS build

RUN apt-get update && \
  apt-get install -y gnucobol && \
  rm -rf /var/lib/apt/lists/*

WORKDIR /src
COPY ./src .

RUN cobc -x main.cbl -i ./ -o CobCash
