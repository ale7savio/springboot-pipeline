#!/bin/bash

# Copia el jar
cp -f target/*.jar docker/

echo "######################"
echo "*** Building image ***"
echo "######################"

echo $BUILD_ID
export TAG=$BUILD_ID
echo $TAG

cd docker/ && sudo docker-compose -f docker-compose-build.yml build --no-cache
