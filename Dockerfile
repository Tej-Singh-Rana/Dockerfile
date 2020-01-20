FROM centos
RUN yum install -y which 
add jdk-8u121-linux-x64.rpm .
RUN rpm -i jdk-8u121-linux-x64.rpm
COPY hadoop2  /hadoop2
COPY .bashrc /root/.bashrc
RUN source /root/.bashrc
COPY /hadoop2/sbin/hadoop-daemon.sh /etc/init.d/
RUN chmod +x /etc/init.d/hadoop-daemon.sh
RUN /etc/init.d/hadoop-daemon.sh start namenode
COPY /hadoop2/sbin/yarn-daemon.sh /etc/init.d/
RUN chmod +x /etc/init.d/yarn-daemon.sh
RUN /etc/init.d/yarn-daemon.sh start nodemanager
EXPOSE 8088 50070 50075 50030 50060

