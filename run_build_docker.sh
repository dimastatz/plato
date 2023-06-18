#!/bin/bash

black .
docker build --tag plato-docker --build-arg CACHEBUST=$(date +%s) .