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
COPY newid.php /var/www/html/newid.php
EXPOSE 8080
CMD ["apache2ctl" "-D" "FOREGROUND"]
