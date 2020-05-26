FROM ubuntu:18.04

ENV KAFKA_HOME /usr/local/kafka
ADD ./start-kafka.bash /scripts/
 
# install java + others
RUN apt-get update && apt-get install -y \
  wget \
  net-tools \
  openjdk-8-jdk
 
# install kafka
RUN wget https://mirrors.ukfast.co.uk/sites/ftp.apache.org/kafka/2.5.0/kafka_2.12-2.5.0.tgz && \
  tar -xzf kafka_2.12-2.5.0.tgz && \
  rm kafka_2.12-2.5.0.tgz
RUN  mv kafka_2.12-2.5.0 $KAFKA_HOME

EXPOSE 9092
EXPOSE 2181

CMD ["/scripts/start-kafka.bash"]
