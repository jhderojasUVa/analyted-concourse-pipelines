#!/bin/bash

PIPELINE_NAME=$1
PIPELINE_FILE=$2

if [ \( -z "$PIPELINE_NAME" \) -o \( -z "$PIPELINE_FILE" \) ] 
then
    echo "Error: No pipeline name or no pipeline file"
    exit 1
else
    echo "Setting pipeline..."
    fly -t example set-pipeline --pipeline $1 --config $2
    exit 0
fi
