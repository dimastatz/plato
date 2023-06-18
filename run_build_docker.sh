#!/bin/bash

black plato
pylint plato
pytest plato
docker build --tag plato-docker --build-arg CACHEBUST=$(date +%s) .