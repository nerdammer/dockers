#!/bin/bash

tar -xzf phoenix-4.4.0-HBase-1.1-bin.tar.gz
mv phoenix-4.4.0-HBase-1.1-bin /opt/
rm -f phoenix-4.4.0-HBase-1.1-bin.tar.gz
ln -s /opt/phoenix-4.4.0-HBase-1.1-bin /opt/phoenix

cp /opt/phoenix/phoenix-server-4.4.0-HBase-1.1.jar /opt/hbase/lib/
