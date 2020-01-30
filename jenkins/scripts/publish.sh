#!/bin/bash

#export REGISTRY="35.234.98.81:5000"
#export IMAGE="springboot-pipeline"
export TAG=$(sed -n '1p' /tmp/.springboot-pipeline-info)

cd ~/../apps/springboot-pipeline/ && docker-compose up -d

#Finalmente eliminamos las imagenes creadas
docker image prune -a -f --filter 'until=50s'
#docker rmi -f $(docker images --filter reference='*/springboot-pipeline*' -q)
