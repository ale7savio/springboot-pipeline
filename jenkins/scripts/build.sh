#!/bin/bash

# Copia el jar
cp -f target/*.jar docker/

echo "######################"
echo "*** Building image ***"
echo "######################"

#docker images --filter reference='*pringboot-pipeline*'

cd docker/ && docker-compose -f docker-compose-build.yml build --no-cache
docker rmi -f $(docker images --filter reference='*pringboot-pipeline*' -q)
