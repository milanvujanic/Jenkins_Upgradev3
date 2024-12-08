#!/bin/bash
docker image build -t milan79/udemy-jenkins-tutorial:$1 -f maven-samples/single-module/dockerfile .

if [ -z ${DOCKER_HUB_USER+x} ]
then 
    echo 'Skipping login - credentials not set' 
else 
    docker login -u $DOCKER_HUB_USER -p $DOCKER_HUB_PASSWORD
fi

docker push milan79/udemy-jenkins-tutorial:$1