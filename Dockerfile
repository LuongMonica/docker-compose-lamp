FROM ubuntu:bionic
ENV TZ=US/Pacific
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone
RUN apt update -y
# install pkgs
RUN apt install apache2 -y
RUN apt install php php-mysql php-mysqli php-common -y
# configuration
COPY newid.php /var/www/html/
EXPOSE 80
CMD ["/usr/sbin/apachectl", "-D", "FOREGROUND"]
