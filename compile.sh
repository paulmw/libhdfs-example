#!/usr/bin/env bash

source /opt/cloudera/parcels/CDH/lib/bigtop-utils/bigtop-detect-javahome

export HADOOP_HOME="/opt/cloudera/parcels/CDH/"
export CXXFLAGS="-O2 -g -Wall -I$HADOOP_HOME/include/ -I$JAVA_HOME/include/ -I$JAVA_HOME/include/linux/"
export LDFLAGS="-L$HADOOP_HOME/lib64/ -lhdfs -L$JAVA_HOME/jre/lib/amd64/server/ -ljvm"
export LD_LIBRARY_PATH="$HADOOP_HOME/lib64/:$JAVA_HOME/jre/lib/amd64/server/"

g++ $CXXFLAGS $LDFLAGS test.c -o test
