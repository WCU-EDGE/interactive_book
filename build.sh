#!/bin/bash

set -e

docker image rm book-base:latest || true
docker image rm book-master:latest || true
docker image rm book-worker:latest || true

docker build -t book-base:latest ./docker/base
docker build -t book-master:latest ./docker/master
docker build -t book-worker:latest ./docker/worker
