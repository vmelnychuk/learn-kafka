#!/usr/bin/env bash

# use common variables
source environment-variables.sh

# run producer
$KAFKA_HOME/bin/kafka-console-consumer.sh --bootstrap-server localhost:9092 --from-beginning --topic vivus-es
