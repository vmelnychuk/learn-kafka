#!/usr/bin/env bash

# use common variables
source environment-variables.sh

# run zookeeper, same as `bin/zookeeper-server-start.sh config/zookeeper.properties`
$KAFKA_HOME/bin/zookeeper-server-start.sh $CONFIG_DIR/zookeeper.properties &

# run kafka broker 0
$KAFKA_HOME/bin/kafka-server-start.sh $CONFIG_DIR/server-0.properties &

# run kafka broker 1
#$KAFKA_HOME/bin/kafka-server-start.sh $CONFIG_DIR/server-1.properties &

# run kafka broker 2
#$KAFKA_HOME/bin/kafka-server-start.sh $CONFIG_DIR/server-2.properties &


# show topics on cluster
echo "List of topics"
$KAFKA_HOME/bin/kafka-topics.sh --list --zookeeper localhost:2181
