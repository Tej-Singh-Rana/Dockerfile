#!/bin/bash

if [$color == "red"]
then
	cp /opt/demo.html   /var/www/html/index.html
	httpd -DFOREGROUND

elif [$color == "green"]
then
	cp /opt/demon.html  /var/www/html/index.html
	httpd -DFOREGROUND

else
	cp /opt/index.html    /var/www/html/index.html
	httpd -DFOREGROUND
fi
