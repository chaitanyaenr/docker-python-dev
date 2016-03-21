#!/usr/bin/env bash


docker login -e "$DOCKER_EMAIL" -u "$DOCKER_USERNAME" -p "$DOCKER_PASSWORD"
REGISTRY="" make push
docker login -e "$QUAY_EMAIL" -u "$QUAY_USERNAME" -p "$QUAY_PASSWORD" quay.io
make push
