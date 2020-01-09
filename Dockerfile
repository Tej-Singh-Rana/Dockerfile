FROM centos               #Image pulling from docker-hub.

RUN yum install httpd python3 -y      #Installing packages inside image.

COPY python.py    /var/www/cgi-bin/             #copying python file inside httpd cgi-bin directory.

EXPOSE 80                                 #initializing http port.

ENTRYPOINT httpd -DFOREGROUND              # make it running condition to httpd service.


