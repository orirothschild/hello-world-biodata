#!/bin/bash

echo "***********************"
echo "***build both images***"
echo "***********************"
docker build -t orirothschild/hello-world -f ./docker-ruby-hello-world ./docker-ruby-hello-world
docker build -t orirothschild/hello-world -f ./docker-ruby-howdy-world ./docker-ruby-howdy-world