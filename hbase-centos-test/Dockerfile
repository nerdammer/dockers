FROM centos:6.6
MAINTAINER Nicola Ferraro <nibbio84@gmail.com>

RUN yum install -y java-1.7.0-openjdk.x86_64

RUN mkdir /hbase-setup
WORKDIR /hbase-setup

ADD ./install-hbase.sh /hbase-setup/
RUN ./install-hbase.sh

#ENV JAVA_HOME=/usr/lib/jvm/java-7-openjdk-amd64/jre

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

#CMD /opt/hbase/bin/hbase master start