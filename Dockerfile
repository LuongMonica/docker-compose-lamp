FROM ubuntu:latest
ENV TZ=US/Pacific
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone
RUN apt-get update -y
# install pkgs
RUN apt-get install apache2 -y
RUN apt-get install php php-mysql php-mysqli php-common -y
# configuration
COPY newid.php /var/www/html/
EXPOSE 80
CMD ["/usr/sbin/apachectl", "-D", "FOREGROUND"]
