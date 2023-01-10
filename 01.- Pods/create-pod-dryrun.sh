#!/bin/bash

kubectl run pod01 --image nginx:alpine --dry-run=client -o yaml > nginx-pod.yaml