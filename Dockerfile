FROM ubuntu:bionic
WORKDIR /cit496
ENV MYSQL_USER=pma
ENV MYSQL_PASSWORD=f00barbin
ENV MYSQL_DATABASE=cloudproject
RUN apt update -y
# install pkgs
RUN apt install apache2 -y
RUN apt install php-mbstring -y
# configuration
COPY docker-newid.php /var/www/html/
EXPOSE 80
