#!/bin/bash

set -e

kubectl apply -f namespace.yaml
kubectl apply -f service.yaml
kubectl apply -f configmap.yaml
kubectl apply -f deployment.yaml
kubectl apply -f ingress.yaml

echo 'Use "kubectl -n challenge get pods" to monitor the new config becoming ready'
