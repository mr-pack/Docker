FROM debian

RUN apt-get update && apt-get install -y apache2 libapache2-mod-php7.3 php-xdebug

#Dont forget set ServerName in /etc/apache/apache2.conf

VOLUME ["/var/www", "/etc/apache/apache2.conf", "/etc/apache/sites-available", "/etc/apache/sites-enabled"]

EXPOSE 80 443

CMD ["apachectl", "-D", "FOREGROUND"]