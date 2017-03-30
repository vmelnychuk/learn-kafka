## Introduction

## Configuration files
`server-1.properties` and `server-2.properties`

## Start Kafka
1. start zookeeper
```
bin/zookeeper-server-start.sh config/zookeeper.properties
```

2. check if zookeeper is working
```
telnet localhost 2181
stat
```

3. start kafka broker
```
bin/kafka-server-start.sh config/server.properties
```

## Automate work
- run `start-kafka-cluster.sh`
- run `create-topic.sh`
- run `start-producer.sh`
- run `start-consumer.sh`
