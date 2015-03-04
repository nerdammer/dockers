FROM centos:6.6
MAINTAINER Nicola Ferraro <nibbio84@gmail.com>

RUN yum install -y java-1.7.0-openjdk.x86_64
ENV JAVA_HOME=/usr/lib/jvm/java-1.7.0-openjdk-1.7.0.75.x86_64/jre

RUN yum install -y wget
RUN yum install -y nc

RUN mkdir /hbase-setup
WORKDIR /hbase-setup

ADD ./install-hbase.sh /hbase-setup/
RUN ./install-hbase.sh

# zookeeper
EXPOSE 2181
# HBase Master API port
EXPOSE 60000
# HBase Master Web UI
EXPOSE 60010
# Regionserver API port
EXPOSE 60020
# HBase Regionserver web UI
EXPOSE 60030

CMD /opt/hbase/bin/hbase master start