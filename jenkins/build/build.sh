#!/bin/bash

# Copy the new JAR to the build location

cp -f java-app/target/*.jar jenkins/build/

echo "****************************"
echo "** Buuilding Docker Image **"
echo "****************************"

cd jenkins/build/ && docker-compose -f docker-compose-build.yml build --no-cache


