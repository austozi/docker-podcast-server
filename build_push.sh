#!/bin/bash -e
REPO_NAME=austozi/podcast-server
VERSION=0.1
DOCKER_BUILDKIT=1 docker build -t $REPO_NAME:latest -t $REPO_NAME:$VERSION .
docker login
docker push --all-tags $REPO_NAME
