#!/bin/bash

REGISTRY="35.234.98.81:5000"
IMAGE="springboot-pipeline"

curl -X DELETE "https//$REGISTRY/v2/$IMAGE/manifests/$(
    curl -$auth -sSL -I \
        -H "Accept: application/vnd.docker.distribution.manifest.v2+json" \
        "https://$REGISTRY/v2/$IMAGE/manifests/$(
            curl "https://$REGISTRY/v2/$IMAGE/tags/list" | jq -r '.tags[0]'
        )" \
    | awk '$1 == "Docker-Content-Digest:" { print $2 }' \
    | tr -d $'\r' \
)"
