#!/usr/bin/env bash

source environment-variables.sh

# run producer
$KAFKA_HOME/bin/kafka-console-producer.sh --broker-list localhost:9092 --topic vivus-es

