#!/bin/bash

echo "**********************************"
echo "***   Testing JAR   *************"

WORKSPACE=/home/jenkins/jenkins_data/jenkins_home/workspace/pipeline-docker-maven

docker run --rm -i -v $PWD/java-app:/app -v /root/.m2:/root/.m2 -w /app maven:3-alpine "$@" 
