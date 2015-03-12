#!/bin/bash

sbt reStart

echo "JobServer Started"
tail -f /dev/null