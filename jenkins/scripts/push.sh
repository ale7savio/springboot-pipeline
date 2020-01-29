#!/bin/bash

echo "########################"
echo "*** Preparing to push ***"
echo "########################"

REGISTRY="35.234.98.81:5000"
IMAGE="springboot-pipeline"
#No se creará en un entorno en el que esté jenkins instalado ya que se usará la variable global $BUILD_TAG que tiene jenkins
VERSION=$BUILD_ID

echo $IMAGE:$VERSION $REGISTRY/$IMAGE:$VERSION

echo "*** Tagging image ***"
docker tag $IMAGE:$VERSION $REGISTRY/$IMAGE:$VERSION
echo "*** Pushing image ***"
docker push $REGISTRY/$IMAGE:$VERSION

#docker tag springboot-pipeline:1 35.246.237.70:5000/springboot-pipeline:1
#docker push 35.246.237.70:5000/springboot-pipeline:1
