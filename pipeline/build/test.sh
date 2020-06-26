#!/bin/bash
echo "*************************************"
echo "*******************pushing to dockerhub**************"
echo "*************************************"

echo "$PASS" | docker login -u "$DOCKER_ID" --password-stdin

docker push orirothschild/hello-world

docker push orirothschild/howdy-world
