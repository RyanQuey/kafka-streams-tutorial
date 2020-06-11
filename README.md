# INTRO
A simple project based off of [the Kafka Streams Tutorial](https://kafka.apache.org/25/documentation/streams/tutorial). Shows how to get it all going together, including starting the server and creating the topics. The goal is to get familiar with the basic concepts and see how they work together.


# SETUP
1) Install Kafka
    - make sure it's the same version and in the same location specified in the /scripts/start-kafka.sh, which is currently $HOME/kafka_2.12-2.5.0. Or else, change that file to match your installation.
    - Note that packer-boxes initializer script for kafka (kafka.sh) will install it there by default as well.
2) In three separate terminal sessions, run the scripts in the `/scripts` directory. 
3) put some input into the producer and it should run just fine, counting all your words
