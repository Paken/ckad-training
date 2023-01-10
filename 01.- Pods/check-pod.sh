#!/bin/bash

if [ $(kubectl get pods | grep pod01 | awk '{print $3}') == "Running" ];
then
    echo "The pod is running correctly"
else
    echo "The pod is NOT running correctly"
fi

