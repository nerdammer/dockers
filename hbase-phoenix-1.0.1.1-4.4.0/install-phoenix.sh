#!/bin/bash

tar -xzf phoenix-4.4.0-HBase-1.0-bin.tar.gz
mv phoenix-4.4.0-HBase-1.0-bin /opt/
rm -f phoenix-4.4.0-HBase-1.0-bin.tar.gz
ln -s /opt/phoenix-4.4.0-HBase-1.0-bin /opt/phoenix

cp /opt/phoenix/phoenix-server-4.4.0-HBase-1.0.jar /opt/hbase/lib/
