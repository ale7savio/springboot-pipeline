#!/bin/bash

# Copia el jar
cp -f target/*.jar docker/

echo "######################"
echo "*** Building image ***"
echo "######################"

SUDO_GID=1006

cd docker/ && sudo docker-compose -f docker-compose-build.yml build --no-cache
