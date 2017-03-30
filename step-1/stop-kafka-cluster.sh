#!/usr/bin/env bash

# use common variables
source environment-variables.sh

# stop kafka
$KAFKA_HOME/bin/kafka-server-stop.sh

# stop zookeeper
$KAFKA_HOME/bin/zookeeper-server-stop.sh

