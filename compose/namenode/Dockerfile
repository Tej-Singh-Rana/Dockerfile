FROM dockernode:v1

COPY namenode/* /tmp/


RUN mv /tmp/core-site.xml /hadoop2/etc/hadoop/core-site.xml && \
    mv /tmp/hdfs-site.xml /hadoop2/etc/hadoop/hdfs-site.xml && \
    mv /tmp/yarn-site.xml /hadoop2/etc/hadoop/yarn-site.xml && \

# format namenode
RUN /hadoop2/bin/hdfs namenode -format
RUN $HADOOP_HOME/sbin/hadoop-daemon.sh start namenode
RUN $HADOOP_HOME/sbin/yarn-daemon.sh start resourcemanager



