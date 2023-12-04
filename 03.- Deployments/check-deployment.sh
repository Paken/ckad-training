#!/bin/bash

running_ready=$(kubectl get deployments | grep dep01 | awk '{print $2}' | cut -f1 -d/)
total_ready=$(kubectl get deployments | grep dep01 | awk '{print $2}' | cut -f2 -d/)
uptodate=$(kubectl get deployments | grep dep01 | awk '{print $3}')
available=$(kubectl get deployments | grep dep01 | awk '{print $4}')

if [ $running_ready == $total_ready ] && [ $running_ready == $available ] && [ $running_ready == $uptodate ] && [ $available <> 0 ];
then
    echo "The Deployment is running correctly"
else
    echo "The Deployment is NOT running correctly"
fi
