#!/bin/bash

set -e

kubectl apply -f namespace.yaml
kubectl apply -f service.yaml
kubectl apply -f deployment.yaml

echo 'Use "kubectl -n challenge get svc" to monitor when your load balancer becomes ready'
