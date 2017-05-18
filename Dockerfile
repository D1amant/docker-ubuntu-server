FROM ubuntu

RUN apt-get update && apt-get install -y nginx 

RUN mkdir -m 777 /var/www/html/app

RUN mkdir -m 777 /var/www/html/app/public

RUN  apt-get -y install php7.0-fpm php7.0-mysql php7.0-curl php7.0-gd php7.0-intl php-pear php-imagick php7.0-imap php7.0-mcrypt php-memcache  php7.0-pspell php7.0-recode php7.0-sqlite3 php7.0-tidy php7.0-xmlrpc php7.0-xsl php7.0-mbstring php-mongodb

RUN apt-get install -y nodejs 

RUN apt-get install -y npm

EXPOSE 80
EXPOSE 8000


COPY default /etc/nginx/sites-enable/