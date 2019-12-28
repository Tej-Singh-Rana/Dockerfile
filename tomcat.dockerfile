FROM fedora

ENV color white

RUN yum install httpd -y

COPY index.html demo.html demon.html color.sh /opt/

EXPOSE 80

#ENTRYPOINT httpd -DFOREGROUND

CMD ["/bin/bash","/opt/color.sh"]
