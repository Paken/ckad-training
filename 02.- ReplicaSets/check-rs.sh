#!/bin/bash

desired=$(kubectl get rs | grep rs01 | awk '{print $2}')
current=$(kubectl get rs | grep rs01 | awk '{print $3}')
ready=$(kubectl get rs | grep rs01 | awk '{print $4}')

if [ $desired == $current ] && [ $desired == $ready ] && [ $ready <> 0 ];
then
    echo "The Replica Set is running correctly"
else
    echo "The Replica Set is NOT running correctly"
fi

