#! /bin/bash

wget http://www.eu.apache.org/dist/hbase/hbase-1.0.0/hbase-1.0.0-bin.tar.gz
tar xzf hbase-1.0.0-bin.tar.gz -C /opt/
ln -s /opt/hbase-1.0.0 /opt/hbase
