FROM centos:centos6

ENV JAVA16_HOME /root/jdk/jdk1.6.0_45

ADD INFRA/BUILD/jdk-6u45-linux-x64.bin  .

USER root

RUN    mkdir /root/jdk && \
    chmod +x jdk-6u45-linux-x64.bin && \
    ./jdk-6u45-linux-x64.bin && \
    rm jdk-6u45-linux-x64.bin && \
    mv jdk1.6.0_45 /root/jdk

RUN  yum -y install wget 

ENV PATH=$PATH:/root/jdk/jdk1.6.0_45/bin




  


# Define commonly used JAVA_HOME variable
ENV JAVA_HOME /root/jdk/jdk1.6.0_45/

# Installs Ant
ENV ANT_VERSION 1.8.4
RUN cd && \
    wget -q https://archive.apache.org/dist/ant/binaries/apache-ant-${ANT_VERSION}-bin.tar.gz && \
    tar -xzf apache-ant-${ANT_VERSION}-bin.tar.gz && \
    mv apache-ant-${ANT_VERSION} /opt/ant && \
    rm apache-ant-${ANT_VERSION}-bin.tar.gz
ENV ANT_HOME /opt/ant
ENV PATH ${PATH}:/opt/ant/bin
