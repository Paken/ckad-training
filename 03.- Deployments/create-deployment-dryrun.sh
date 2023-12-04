#!/bin/bash

kubectl create deployment dep01 --image nginx:alpine --replicas 2 --dry-run=client -o yaml > nginx-deployment.yaml
