#!/bin/bash

# Copia el jar
cp -f target/*.jar docker/

echo "######################"
echo "*** Building image ***"
echo "######################"

echo ${env.BUILD_ID}

cd docker/ && docker-compose -f docker-compose-build.yml build --no-cache
