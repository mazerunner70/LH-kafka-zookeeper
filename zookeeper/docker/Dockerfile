FROM ubuntu:18.04

ARG APACHE_KAFKA_VERSION=2.5.0
 
# install java + others
RUN apt-get update && apt-get install -y \
  wget \
  net-tools \
  openjdk-8-jdk
 
# install kafka
RUN wget -q -O - https://mirrors.ukfast.co.uk/sites/ftp.apache.org/kafka/${APACHE_KAFKA_VERSION}/kafka_2.12-${APACHE_KAFKA_VERSION}.tgz | tar -xzf - -C /opt && \
  mv /opt/kafka_* /opt/kafka 

VOLUME ["/opt/kafka/config", "/var/lib/zookeeper"]

EXPOSE 2181 2888 3888

ADD start.bash .
RUN chmod +x start.bash

CMD ["./start.bash"]
