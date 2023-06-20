#!/bin/bash

# stop and remove all conatiners
docker ps -aq | xargs docker rm -f
docker rmi $(docker images -q)

# test
black plato
pylint plato
pytest plato


docker build --tag plato-docker --build-arg CACHEBUST=$(date +%s) .
docker run -p 8888:8888 -d plato-docker