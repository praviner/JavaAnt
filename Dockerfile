FROM ubuntu:trusty

# sample
# Install Java.
RUN \
  apt-get update && \
  apt-get install -y openjdk-6-jdk && \
  apt-get install -y wget && \
  rm -rf /var/lib/apt/lists/*

# Define working directory.
WORKDIR /data

COPY . .

# Define commonly used JAVA_HOME variable
ENV JAVA_HOME /usr/lib/jvm/java-6-openjdk-amd64

