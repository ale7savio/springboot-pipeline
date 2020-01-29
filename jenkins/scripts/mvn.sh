#!/bin/bash

echo "****************"
echo "* Building jar!*"
echo "****************"

# -v Ruta pom desde donde se ejecuta:ruta donde se copia -w /ruta donde se ha copiado
sudo docker run -v $(pwd):/app -w /app maven:3-alpine "$@"
