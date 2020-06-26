#!/bin/bash

echo "***********************"
echo "***build both images***"
echo "***********************"
docker build -t orirothschild/hello-world -f ./docker-ruby-hello-world/Dockerfile ./docker-ruby-hello-world
docker build -t orirothschild/howdy-world -f ./docker-ruby-howdy-world/Dockerfile ./docker-ruby-howdy-world