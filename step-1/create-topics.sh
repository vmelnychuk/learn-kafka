#!/usr/bin/env bash

source environment-variables.sh

# create topiics
$KAFKA_HOME/bin/kafka-topics.sh --create --zookeeper localhost:2181 --replication-factor 1 --partitions 1 --topic vivus-es
$KAFKA_HOME/bin/kafka-topics.sh --create --zookeeper localhost:2181 --replication-factor 1 --partitions 1 --topic vivus-es-modified

# show topics on cluster
$KAFKA_HOME/bin/kafka-topics.sh --list --zookeeper localhost:2181

