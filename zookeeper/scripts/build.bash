#!/bin/bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

cd $DIR/../docker

docker build -t lh-helm/kafka-zookeeper:0.10 .


