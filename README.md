# INTRO
A simple project based off of [the Kafka Streams Tutorial](https://kafka.apache.org/25/documentation/streams/tutorial). Shows how to get it all going together, including starting the server and creating the topics. The goal is to get familiar with the basic concepts and see how they work together.


# SETUP
1) Install Kafka
    - make sure it's the same version and in the same location specified in the /scripts/start-kafka.sh, which is currently $HOME/kafka_2.12-2.5.0. Or else, change that file to match your installation.
    - Note that packer-boxes initializer script for kafka (kafka.sh) will install it there by default as well.
2) In three separate terminal sessions, run the scripts in the `/scripts` directory. 
3) put some input into the producer and it should run just fine, counting all your words

# Released under MIT License

Copyright (c) 2020 Ryan Quey.

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
