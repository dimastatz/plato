#!/bin/bash

# stop and remove smarti
docker stop smarti-container
docker rm smarti-container
docker rmi smarti-image

# test
black plato
pylint plato
pytest plato


docker build --tag smarti-image --build-arg CACHEBUST=$(date +%s) .
docker run --name smarti-container -p 8888:8888 -d smarti-image