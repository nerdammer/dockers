#!/bin/bash

wget http://archive.eu.apache.org/dist/phoenix/phoenix-4.4.0-HBase-1.1/bin/phoenix-4.4.0-HBase-1.1-bin.tar.gz
tar -xzf phoenix-4.4.0-HBase-1.1-bin.tar.gz
mv phoenix-4.4.0-HBase-1.1-bin /opt/
rm -f phoenix-4.4.0-HBase-1.1-bin.tar.gz
ln -s /opt/phoenix-4.4.0-HBase-1.1-bin /opt/phoenix

cp /opt/phoenix/phoenix-4.4.0-server.jar /opt/hbase/lib/
