#!/bin/bash

echo "################"
echo "*** Testing  ***"
echo "################"

#OPCION 1 NO TENER LAS DEPENDENCIAS EN JENKINS Y DESCARGARLAS CON CADA DESPLIEGUE
docker run -v $(pwd)/../../:/app -w /app maven:3-alpine "$@"

#OPCION 2 TENER EL REPOSITORIO DE DEPENDENCIAS EN JENKINS
#docker run --rm -v /Users/alejandromunoz/.m2:/root/.m2 -v $(pwd)/../../:/app -w /app maven:3-alpine "$@"
