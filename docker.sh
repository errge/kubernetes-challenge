#!/bin/bash

set -e

docker build -t errge/kubernetes-challenge .
docker push errge/kubernetes-challenge
