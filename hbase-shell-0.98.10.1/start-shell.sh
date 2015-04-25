#!/bin/bash

/opt/hbase/bin/hbase/start-pseudo-distributed.sh > logmaster.log 2>&1 &

/opt/hbase/bin/hbase shell
