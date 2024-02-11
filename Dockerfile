FROM ubuntu:24.04
ARG ANSIBLE_VERSION
ARG HADOOP_VERSION
ARG JAVA_HOME
RUN apt update && \
	apt upgrade -y && \
	apt install -y \
	gcc \
	openjdk-11-jdk \
	openssh-client \
	openssh-server \
	python3 \
	python3-pip \
	python3-venv \
	wget
WORKDIR /tmp
RUN wget https://dlcdn.apache.org/hadoop/common/hadoop-$HADOOP_VERSION/hadoop-$HADOOP_VERSION.tar.gz -P /tmp
RUN tar -xvf hadoop-$HADOOP_VERSION.tar.gz -C /
RUN rm -rf /tmp/*
# setup ssh server
# https://dev.to/s1ntaxe770r/how-to-setup-ssh-within-a-docker-container-i5i
# https://unix.stackexchange.com/questions/28526/add-a-user-to-the-system-only-if-it-doesnt-exist
RUN id -u hadoop &>/dev/null || useradd -rm -d /home/ubuntu -s /bin/bash -g root -G sudo -u 1000 hadoop
RUN id -u hadoop &>/dev/null || echo 'hadoop:hadoop' | chpasswd
RUN service ssh start
RUN /usr/sbin/sshd
# https://stackoverflow.com/questions/43235179/how-to-execute-ssh-keygen-without-prompt#answer-43235320
RUN ssh-keygen -q -t ed25519 -N '' -f ~/.ssh/id_ed25519
RUN cat ~/.ssh/id_ed25519.pub >> ~/.ssh/authorized_keys
RUN chmod 0600 ~/.ssh/authorized_keys
ENV HADOOP_HOME /hadoop
ENV PATH $PATH:$JAVA_HOME/bin
RUN python3 -m venv venv
RUN . venv/bin/activate && pip3 install pip==24.0
RUN . venv/bin/activate && pip3 install ansible==$ANSIBLE_VERSION

