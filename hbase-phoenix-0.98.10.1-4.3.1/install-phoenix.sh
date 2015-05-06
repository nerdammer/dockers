#!/bin/bash

wget http://archive.apache.org/dist/phoenix/phoenix-4.3.1/bin/phoenix-4.3.1-bin.tar.gz
tar -xzf phoenix-4.3.1-bin.tar.gz
mv phoenix-4.3.1-bin /opt/
rm -f phoenix-4.3.1-bin.tar.gz
ln -s /opt/phoenix-4.3.1-bin /opt/phoenix

cp /opt/phoenix/phoenix-4.3.1-server.jar /opt/hbase/lib/
