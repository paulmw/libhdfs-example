#!/usr/bin/env bash

source /opt/cloudera/parcels/CDH/lib/bigtop-utils/bigtop-detect-javahome

export HADOOP_HOME="/opt/cloudera/parcels/CDH/" # CDH
export LD_LIBRARY_PATH="$HADOOP_HOME/lib64/:$JAVA_HOME/jre/lib/amd64/server/"

CLASSPATH=/etc/hadoop/conf
for f in $HADOOP_HOME/lib/hadoop-hdfs/*.jar; do
  CLASSPATH=${CLASSPATH}:$f;
done
for f in $HADOOP_HOME/lib/hadoop-hdfs/lib/*.jar; do
  CLASSPATH=${CLASSPATH}:$f;
done
for f in $HADOOP_HOME/lib/hadoop/*.jar; do
  CLASSPATH=${CLASSPATH}:$f;
done
for f in $HADOOP_HOME/lib/hadoop/lib/*.jar; do
  CLASSPATH=${CLASSPATH}:$f;
done
export CLASSPATH=$CLASSPATH

./test
