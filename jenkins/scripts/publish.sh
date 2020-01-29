#!/bin/bash

#export REGISTRY="35.246.237.70:5000"
#export IMAGE=$(sed -n '1p' /tmp/.springboot-pipeline-info)
#export TAG=$(sed -n '2p' /tmp/.springboot-pipeline-info)

cd ~/../apps/springboot-pipeline/ && docker-compose up -d
