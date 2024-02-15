#!/bin/bash
name=$1
name_lowercase=${name,,}
$HADOOP_HOME/bin/hdfs dfs -rm -f -r output
cd /src
$HADOOP_HOME/bin/hadoop com.sun.tools.javac.Main $1.java && jar cf ${name_lowercase}.jar $1*.class && $HADOOP_HOME/bin/hadoop jar ${name_lowercase}.jar $1 $2 output
cd -
