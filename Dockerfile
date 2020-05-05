FROM ubuntu
RUN apt-get update
ARG DEBIAN_FRONTEND=noninteractive
RUN apt-get install -y apache2
CMD ["/usr/sbin/apache2ctl", "-DFOREGROUND"]
EXPOSE 80

