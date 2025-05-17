FROM ubuntu:24.04

RUN apt update
RUN apt install -y apache2

COPY html /var/www/html
WORKDIR /var/www/html

## poort openzetten
EXPOSE 80

## apache2 starten & met bash niet laten stoppen
CMD service apache2 start && bash
