# analyted-concourse

Example of pipelines for Concourse for [AnalyTED talks](https://wiki.at.sky/display/AT/AnalyTED+talks), to explain basic usage of Concourse and pipelines.

# List of contents

Next a small list of what you will find

## Docker compose to run concourse

at `/docker` you will find the `docker-compose.yml` that `docker-compose` will use to start the database and the server/worker/ui.

Start with:

- `./docker/docker-compose up`

It starts whatever is needed, start the ui at `http://localhost:8080`, sets the database, create a user `test/test` and a team called `example`.

To check everything is running, open a browser and check the URL.

If you want to add more workers on the `keys` directory you have what you need, session, TSA, worker keys.

## Scripts to help run commands

For making easy to use the `fly` command we have created a `/scripts` directory in `bash`.

- `login.sh`: login into concourse
- `set-pipeline.sh <name> <file.yml>`: sets a pipeline, args (name) and (yaml file)
- `delete-pipeline.sh <name>`: destroy a pipeline
- `execute-pipeline.sh <name>`: executes the pipeline, aka run it
- `pause-pipeline.sh <name>`: pauses a pipeline
- `unpause-pipeline.sh <name>`: unpauses the pipeline
- `list-pipelines.sh`: list all the pipelines for the team **example**

## Pipelines examples

Next some basic examples:

- `starting.yml`: simple hello world
- `serial.yml`: a pipeline that, if you start several times it will wait to the previous to finish to start the next one
- `multiple_jobs.yml`: a pipeline with two jobs than can be started separately
- `time_job.yml`: example of a resource that trigger the pipeline every 10 seconds
- `docker_image.yml`: example about how to work with docker images
- `resource_git.yml`: a little more complex one that uses git resource to retrieve a repo, and explain how to pass artifacts between steps by starting several different docker images, one for only copy the content and the other to install and build a React application
- `error.yml`: example that returns an error, it makes that the pipeline is not correct (what is doing)
- `failure.yml`: example of a pipeline that in one step/task returns 1 (failure of the command)
