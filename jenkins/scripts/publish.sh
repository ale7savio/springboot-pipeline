#!/bin/bash

#export REGISTRY="35.234.98.81:5000"
#export IMAGE="springboot-pipeline"
#export TAG=$(sed -n '1p' /tmp/.springboot-pipeline-info)


whoami
cd ~/../apps/springboot-pipeline/ && docker-compose up -d
