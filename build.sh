#!/bin/bash

set -e

docker image rm book_master:latest || true
docker image rm book_worker:latest || true

docker build -t book_master:latest ./docker/master
docker build -t book_worker:latest ./docker/worker
