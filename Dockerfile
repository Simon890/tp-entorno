FROM ubuntu:latest
LABEL maintainer="Simon Revello - Julian Britos"
WORKDIR /home/tp-entorno
COPY . .
ENV PATH="$PATH:/home/tp-entorno"
RUN apt-get update
RUN apt-get install bc -y