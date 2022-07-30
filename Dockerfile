FROM ubuntu:latest
LABEL maintainer="Simon Revello - Julian Britos"
WORKDIR /home/tp-entorno
ENTRYPOINT [ "./menu.sh" ]
COPY . .
RUN apt-get update
RUN apt-get install bc -y