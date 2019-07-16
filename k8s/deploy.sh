#!/bin/bash

set -e

kubectl apply -f namespace.yaml
kubectl apply -f service.yaml
kubectl apply -f deployment.yaml
kubectl apply -f ingress.yaml

echo 'Use "kubectl -n challenge get ing" to monitor when your ingress becomes ready'
