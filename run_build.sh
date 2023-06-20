#!/bin/bash

if [ "$#" -eq 0 ]; then
    echo "No arguments provided. Usage: 
    1. '-local' to build local environment
    2. '-docker' to build and run docker container"
elif [ $1 = "-local" ]; then
    echo "Running format, linter and tests"
    black plato
    pylint plato
    pytest plato
elif [ $1 = "-docker" ]; then
    echo "Building and running docker image"
    docker stop smarti-container
    docker rm smarti-container
    docker rmi smarti-image
    # build docker and run
    docker build --tag smarti-image --build-arg CACHEBUST=$(date +%s) .
    docker run --name smarti-container -p 8888:8888 -d smarti-image
else
  echo "Wrong argument is provided. Usage:
    1. '-local' to build local environment
    2. '-docker' to build and run docker container"
fi

