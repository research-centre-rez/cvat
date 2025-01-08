#!/bin/sh

# this will enable CVAT-UI to communicate with backend
# and allows proper CSRF Trusted origin. Without this you won't be able to visit admin page or use ML backend
export CVAT_HOST=stinger.ad.ujv.cz

echo "Using CVAT_HOST=$CVAT_HOST"

docker compose -f docker-compose.yml -f docker-compose.dev.yml -f components/serverless/docker-compose.serverless.yml up -d --force-recreate
