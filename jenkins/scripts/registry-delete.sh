#!/bin/bash

REGISTRY="35.234.98.81:5000"
IMAGE="springboot-pipeline"

curl -X DELETE "http://$REGISTRY/v2/$IMAGE/manifests/$(
    curl -I \
        -H "Accept: application/vnd.docker.distribution.manifest.v2+json" \
        "http://$REGISTRY/v2/$IMAGE/manifests/$(
            curl "https://$REGISTRY/v2/$IMAGE/tags/list" | jq -r '.tags[0]'
        )" \
    | awk '$1 == "Docker-Content-Digest:" { print $2 }' \
    | tr -d $'\r' \
)"


# REGISTRY="35.234.98.81:5000"
# IMAGE="springboot-pipeline"
# TAG='<tag>'
# curl -X DELETE -sI -k "http://$REGISTRY/v2/$IMAGE/manifests/$(
#   curl -sI -k \
#     -H "Accept: application/vnd.docker.distribution.manifest.v2+json" \
#     "http://$REGISTRY/v2/$IMAGE/manifests/${tag}" \
#     | tr -d '\r' | sed -En 's/^Docker-Content-Digest: (.*)/\1/pi'
# )"
