#!/bin/bash

echo "########################"
echo "*** Preparing to push ***"
echo "########################"

REGISTRY="35.246.237.70:5000"
IMAGE="springboot-pipeline"
#No se creará en un entorno en el que esté jenkins instalado ya que se usará la variable global $BUILD_TAG que tiene jenkins
VERSION="1"

echo $IMAGE:$VERSION $REGISTRY/$IMAGE:$VERSION

echo "*** Tagging image ***"
docker tag $IMAGE:$VERSION $REGISTRY/$IMAGE:$VERSION
echo "*** Pushing image ***"
docker push $REGISTRY/$IMAGE:$VERSION
