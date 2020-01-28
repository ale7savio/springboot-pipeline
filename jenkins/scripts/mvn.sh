#!/bin/bash

echo "****************"
echo "* Building jar!*"
echo "****************"

docker run -v $(pwd)/../../:/app -w /app maven:3-alpine "$@"
