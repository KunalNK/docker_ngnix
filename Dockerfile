FROM centos:latest
LABEL maintainer="kunal07@gmail.com" 
RUN yum -y install httpd
COPY index.html /var/www/html/
EXPOSE 80
CMD ["/usr/sbin/apachectl", "-D", "FOREGROUND"]