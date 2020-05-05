FROM ubuntu
RUN apt-get update
ARG DEBIAN_FRONTEND=noninteractive
RUN apt-get install -y apache2 && apt-get install -y php && apt-get install -y mysql-server
CMD ["/usr/bin/mysql_secure_installation", "y"]
COPY info.php /var/www/html/
CMD service mysql start
CMD ["/usr/sbin/apache2ctl", "-DFOREGROUND"]
EXPOSE 80
