# DataWolf 4.1.0 Dockerfile
Dockerfile to run DataWolf Server and Editor webapps

## Prerequisites
* [Docker](https://www.docker.com/what-docker)

## Setup
You will need to download the newest [DataWolf release](https://opensource.ncsa.illinois.edu/projects/artifacts.php?key=WOLF) binary zipfile.

Once downloaded, you should extract the contents of the zipfile so that your directory looks as follows:

* .git
* .gitignore
* bin/
* conf/
* Dockerfile
* entrypoint.sh
* lib/
* README.md

## Build
Now you are ready to build your Docker image.

From the project root, execute:
```bash
docker build -t datawolf:4.1.0 .
```

## Run
You can now run DataWolf 4.1.0 in a container using the following command:
```bash
docker run --name=datawolf -d -it -e INITIAL_ADMINS="YOUR_EMAIL_HERE" -p 8888:8888 datawolf:4.1.0
```

NOTE: Don't forget to specify an environment variable indicating the e-mail addresses of your `initialAdmins`.


# TODO
* Grab binary automatically (don't make user do this manually)
* Transfer repo to nds-org
* Automate this build on DockerHub
* Support more DataWolf configuration options (SMTP, for example)
