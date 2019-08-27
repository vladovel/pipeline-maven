#!/bin/bash

echo "**********************************"
echo "***   Building JAR   *************"

WORKSPACE=/home/jenkins/jenkins_data/jenkins_home/workspace/pipeline-docker-maven

echo "***   Building JAR   *************"
docker run --rm -i -v $WORKSPACE/java-app:/app -v /root/.m2:/root/.m2 -w /app maven:3-alpine "$@" 
