#!/bin/bash

# Copia el jar
cp -f target/*.jar docker/

echo "######################"
echo "*** Building image ***"
echo "######################"

#docker images --filter reference='*pringboot-pipeline*'
docker rmi -f $(docker images --filter reference='*pringboot-pipeline*' -q)

cd docker/ && docker-compose -f docker-compose-build.yml build --no-cache
