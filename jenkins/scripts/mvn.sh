#!/bin/bash

echo "****************"
echo "* Building jar!*"
echo "****************"

# -v Ruta pom desde donde se ejecuta:ruta donde se copia -w /ruta donde se ha copiado
#docker ps -q --filter "name=name_docker" | grep -q . && docker stop name_docker && docker rm -fv name_docker
docker rm maven-alpine

docker run --name maven-alpine -v $(pwd):/app -w /app maven:3-alpine "$@"
