# Execute a pipeline with inputs or not

$PIPELINE_NAME=$1

if [ -z "$PIPELINE_NAME" ]
then
    echo "Error: No pipeline name or no pipeline file"
    exit 1
else
    echo "Executing pipeline..."
    if [ -z $2 ]
    then
        fly -t example execute --pipeline $1
        exit 0
    else
        fly -t example execute --pipeline $1 --input $2
        exit 0
    fi
fi
