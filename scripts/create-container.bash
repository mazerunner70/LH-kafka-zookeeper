#!/bin/bash

docker create -p 9092:9092 --name kafka-server -h 127.0.0.1 kafka-service:0.10

