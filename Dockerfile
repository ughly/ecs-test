FROM amazonlinux

MAINTAINER Chris Yawman <chris.yawman@team.neustar>

RUN yum -y install nginx php71-cli php71-common php71-fpm php71-gd php71-intl php71-ldap php71-mbstring php71-mcrypt php71-mysqlnd php71-opcache php71-pdo php71-pgsql php71-process php71-soap php71-xml php71-pecl-memcached

RUN echo "NETWORKING=yes" >> /etc/sysconfig/network

EXPOSE 80

CMD service php-fpm start; service nginx start
