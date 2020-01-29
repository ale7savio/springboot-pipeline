#!/bin/bash

# Copia el jar

sudo su
cp -f target/*.jar docker/

whoami

echo "######################"
echo "*** Building image ***"
echo "######################"

cd docker/ && docker-compose -f docker-compose-build.yml build --no-cache
