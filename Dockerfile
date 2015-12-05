FROM ubuntu:14.04
RUN apt-get update

# Apache installation and configuration
RUN apt-get -y install apache2
RUN echo "ServerName localhost" >> /etc/apache2/apache2.conf
RUN mkdir /var/lock/apache2
ENV APACHE_RUN_USER    www-data
ENV APACHE_RUN_GROUP   www-data
ENV APACHE_PID_FILE /var/run/apache2.pid
ENV APACHE_RUN_DIR /var/run/apache2
ENV APACHE_LOCK_DIR /var/lock/apache2
ENV APACHE_LOG_DIR /var/log/apache2

# Copies the source code to Apache's default directory
COPY * /var/www/html/

EXPOSE 80

# Runs Apache when the container starts
CMD ["/usr/sbin/apache2", "-DFOREGROUND"]

