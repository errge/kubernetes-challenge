#!/bin/bash

set -e

kubectl apply -f namespace.yaml
kubectl apply -f deployment.yaml

# port 4000/tcp is reserved for NX on my desktop :(
kubectl -n challenge port-forward deployment/hello 8888:4000

# other idea to debug would be:
#   - kubectl -n challenge get pod -o wide   <- get the podip from here
#   - kubectl -n challenge run -it debian --image=debian --restart=Never --rm
#   - apt update && apt install telnet && telnet <podip> 4000
