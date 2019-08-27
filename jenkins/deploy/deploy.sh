#!/bin/bash

echo maven-project > /tmp/.auth

echo 10 >> /tmp/.auth 

echo sd8tr8mr-hs-== >> /tmp/.auth

scp /tmp/.auth docker_user@192.168.1.206:/tmp/.auth

scp ./jenkins/deploy/publish.sh docker_user@192.168.1.206:/tmp/publish.sh

ssh docker_user@192.168.1.206 "/tmp/publish.sh"
