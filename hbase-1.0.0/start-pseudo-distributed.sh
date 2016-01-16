#!/bin/bash

/opt/hbase/bin/hbase zookeeper > logzoo.log 2>&1 &
/opt/hbase/bin/hbase regionserver start > logregion.log 2>&1 &


# Move the port 60020 to 60000 because of issue HBASE-13453
echo "Waiting port 60020"
while ! nc -z localhost 60020; do sleep 1; done

echo "Waiting port 60030"
while ! nc -z localhost 60030; do sleep 1; done

sed -e "s/60020/60000/" -e "s/60030/16010/" /opt/hbase/conf/hbase-site.xml > hbase-site.xml.modified
mv -f hbase-site.xml.modified /opt/hbase/conf/hbase-site.xml

/opt/hbase/bin/hbase master --localRegionServers=0 start
