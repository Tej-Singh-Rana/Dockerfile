FROM fedora
RUN yum install httpd python3 -y
COPY index.html /var/www/html/
EXPOSE 80
ENTRYPOINT httpd -DFOREGROUND

