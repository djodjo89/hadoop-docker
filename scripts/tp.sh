#!/bin/sh
# 6
# echo "[INFO] --- $(date) --- [TP_0] ☑️ 6"
# $HADOOP_HOME/bin/hadoop jar $HADOOP_HOME/share/hadoop/mapreduce/hadoop-mapreduce-examples-$HADOOP_VERSION.jar >> /logs/results_tp_8.txt
# # 7
# echo "[INFO] --- $(date) --- [TP_0] ☑️ 7"
# mkdir -p input
# cp $HADOOP_HOME/*.txt input
# $HADOOP_HOME/bin/hadoop jar $HADOOP_HOME/share/hadoop/mapreduce/hadoop-mapreduce-examples-$HADOOP_VERSION.jar wordcount input output
# cat output/* >> /logs/results_tp_7.txt
# echo "[INFO] --- $(date) --- [TP_0] ☑️ 8"
# rm -r input output

# 9
# xmlstarlet ed --inplace \
# 	-u "//configuration
# 10
# 11
# 12
# 13
# 14
# echo "[INFO] --- $(date) --- [TP_0] ☑️ 14"
# $HADOOP_HOME/bin/hdfs namenode -format <<< y
# $HADOOP_HOME/bin/hdfs namenode -format >> /logs/results_tp_14.txt
# 15
# echo "[INFO] --- $(date) --- [TP_0] ☑️ 15"
# $HADOOP_HOME/sbin/start-dfs.sh >> /logs/results_tp_15.txt
# 16
# echo "[INFO] --- $(date) --- [TP_0] ☑️ 16"
# $HADOOP_HOME/bin/hdfs dfs -mkdir /user
# $HADOOP_HOME/bin/hdfs dfs -mkdir /user/root
# $HADOOP_HOME/bin/hdfs dfs -mkdir input
# $HADOOP_HOME/bin/hdfs dfs -put $HADOOP_HOME/etc/hadoop/*.xml input
# $HADOOP_HOME/bin/hdfs dfs -ls input
# 17
# exit 0
# echo "[INFO] --- $(date) --- [TP_0] ☑️ 17"
# $HADOOP_HOME/sbin/start-yarn.sh
# $HADOOP_HOME/bin/hadoop jar $HADOOP_HOME/share/hadoop/mapreduce/hadoop-mapreduce-examples-3.3.6.jar grep input output 'dfs[a-z.]+' >> /logs/results_tp_17.txt
# $HADOOP_HOME/bin/hdfs dfs -cat output/* >> /logs/results_17.txt
# touch /logs/tp_is_executed.txt
