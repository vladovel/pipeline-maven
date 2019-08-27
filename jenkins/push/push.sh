#!/bin/bash

echo "******************************************"
echo "*** Pushing image                     ****"
echo "******************************************"

IMAGE="maven-project"

echo "***** Logging in ******"
docker login -u vladovel -p $PASS

echo "**** Tagging image ******"
docker tag $IMAGE:$BUILD_TAG vladovel/$IMAGE:$BUILD_TAG

echo "**** Pushing image ****"
docker push vladovel/$IMAGE:$BUILD_TAG

