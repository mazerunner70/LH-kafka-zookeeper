#!/bin/bash

#docker create -p 9092:9092 --name kafka-server -v kafka-volume:/kafka -h 127.0.0.1 kafka-service:0.10
#docker create -p 9092:9092 --name kafka-server -h kafka0 -v kafka-volume:/kafka kafka-service:0.10
docker create -p 9092:9092 \
    --network network-1121 \
    --name kafka0 \
    -v kafka-volume:/kafka \
    kafka-service:0.10


