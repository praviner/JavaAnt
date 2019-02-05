# Author: Bruno Borges <bruno.borges@oracle.com>
#
# DO NOT ALTER OR REMOVE COPYRIGHT NOTICES OR THIS HEADER.
# 
# Copyright (c) 2015 Oracle and/or its affiliates. All rights reserved.
# 
FROM oraclelinux:7-slim

MAINTAINER Bruno Borges <bruno.borges@oracle.com>

RUN yum -y install java-1.6.0-openjdk-devel && rm -rf /var/cache/yum

ENV JAVA_HOME /usr/lib/jvm/java-openjdk

CMD ["java", "-version"]

# Installs Ant
ENV ANT_VERSION 1.8.4
RUN cd && \
    wget -q https://archive.apache.org/dist/ant/binaries/apache-ant-${ANT_VERSION}-bin.tar.gz && \
    tar -xzf apache-ant-${ANT_VERSION}-bin.tar.gz && \
    mv apache-ant-${ANT_VERSION} /opt/ant && \
    rm apache-ant-${ANT_VERSION}-bin.tar.gz
ENV ANT_HOME /opt/ant
ENV PATH ${PATH}:/opt/ant/bin
