#!/bin/bash
docker build --tag plato-docker --build-arg CACHEBUST=$(date +%s) .