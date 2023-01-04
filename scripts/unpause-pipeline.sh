#!/bin/bash

PIPELINE_NAME=$1

if [ -z "$PIPELINE_NAME" ]
then
    echo "Error: no pipeline name"
    exit 1
else
    fly -t example unpause-pipeline --pipeline $1
    exit 0
fi
