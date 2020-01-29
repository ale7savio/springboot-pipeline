#!/bin/bash

# Copia el jar
cp -f target/*.jar docker/

echo "######################"
echo "*** Building image ***"
echo "######################"



cd docker/ && sudo docker-compose -f docker-compose-build.yml build --no-cache
