FROM ubuntu:24.04
RUN apt update && apt upgrade -y && apt install -y openjdk-11-jdk
RUN apt install -y wget
WORKDIR /tmp
RUN wget https://dlcdn.apache.org/hadoop/common/hadoop-3.3.6/hadoop-3.3.6.tar.gz -P /tmp
RUN tar -xvf hadoop-3.3.6.tar.gz -C /
RUN rm -rf /tmp/*
ENV HADOOP_HOME /hadoop
ENV PATH $PATH:$JAVA_HOME/bin
