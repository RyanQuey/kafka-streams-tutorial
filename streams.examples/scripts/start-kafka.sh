#!/bin/bash -eux
# based on:
# https://kafka.apache.org/quickstart


cd $HOME/kafka_2.12-2.5.0

# start zookeeper with some default configs
echo "starting zookeeper daemon"
bin/zookeeper-server-start.sh -daemon config/zookeeper.properties

# then start kafka server
echo "starting kafka broker (server) daemon"
bin/kafka-server-start.sh -daemon config/server.properties

# create topic(s) for this project
## user will type into here
echo "creating topics for project"
bin/kafka-topics.sh --create --bootstrap-server localhost:9092 --replication-factor 1 --partitions 1 --topic streams-plaintext-input
## our java app will consume the input, run some stuff, then output it to streams-wordcount-output. So we want to make this topic so we can consume it on the other end (though apparently kafka makes some topics automatically when written to...)
bin/kafka-topics.sh --create --bootstrap-server localhost:9092 --replication-factor 1 --partitions 1 --topic streams-wordcount-output

# make sure it ran
bin/kafka-topics.sh --list --bootstrap-server localhost:9092

# start producing
echo "Starting producer for streams-plaintext-input"
bin/kafka-console-producer.sh --bootstrap-server localhost:9092 --topic streams-plaintext-input

