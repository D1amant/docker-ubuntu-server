FROM ubuntu

RUN apt-get update

RUN apt-get install -y unzip zip

RUN apt-get -y install php7.0

RUN  apt-get -y install php-pdo php-mysql php-curl php-gd php-intl php-pear php-imagick php-imap php-mcrypt php-memcache  php-pspell php-recode php-sqlite3 php-tidy php-xmlrpc php-xsl php-mbstring php-mongodb

RUN apt-get install -y apache2 libapache2-mod-php7.0

RUN a2enmod rewrite

RUN apt-get install -y composer

#RUN composer create-project --prefer-dist laravel/laravel /var/www/html/laravel

#RUN apt-get install -y nodejs 
#RUN apt-get install -y npm

RUN mkdir -m 777 /var/www/html/laravel


COPY 000-default.conf /etc/apache2/sites-enabled/
COPY 000-default.conf /etc/apache2/sites-available/

RUN service apache2 restart

CMD ["/usr/sbin/apache2ctl" , "-D" , "FOREGROUND"]
EXPOSE 80
EXPOSE 8000
