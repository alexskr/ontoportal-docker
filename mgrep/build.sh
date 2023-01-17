#!/bin/bash

TAG=0.0.1
docker build --no-cache=true -t ontoportal/mgrep:${TAG} .
#docker build -t ontoportal/mgrep:${TAG} .
docker push ontoportal/mgrep:${TAG}

