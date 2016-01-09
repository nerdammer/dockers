#! /bin/bash

wget --quiet http://archive.eu.apache.org/dist/hbase/1.1.0.1/hbase-1.1.0.1-bin.tar.gz
tar xzf hbase-1.1.0.1-bin.tar.gz -C /opt/
ln -s /opt/hbase-1.1.0.1 /opt/hbase

rm hbase-1.1.0.1-bin.tar.gz
