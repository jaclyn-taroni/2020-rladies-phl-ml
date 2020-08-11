## Development with Docker

_Instructions adapted from [refine.bio examples contributing guidelines](https://github.com/AlexsLemonade/refinebio-examples/blob/7368b2ba12e09a87ce8c3f315938f86596cecc05/CONTRIBUTING.md#docker-for-refinebio-examples)._

During the workshop, we will use RStudio Cloud.
After the workshop, we will remove the shared workspace to limit costs associated with usage. 
We provide a Docker image, using a base image from [the Rocker Project](https://www.rocker-project.org/), for managing dependencies after the fact (and to help with development of the material locally 😁).

**For Docker installation instructions, please see:**

* [Docker Desktop for Mac](https://docs.docker.com/docker-for-mac/install/)
* Docker Desktop for Windows 10 [[Pro, Enterprise, and Education](https://docs.docker.com/docker-for-windows/install/)] [[Home](https://docs.docker.com/docker-for-windows/install-windows-home/)]
* Linux: [Install Docker Engine](https://docs.docker.com/engine/install/)

### Pulling from Dockerhub

The latest version of this Docker image can be obtained from Dockerhub with the following command:

```
docker pull jtaroni/2020-rladies-ml:latest
```

To run the Docker container, you can use the following command from the root directory of the repository, replacing `<PASSWORD>` with a password of your choice.

_Note: Make sure to remove the angle brackets `<>` when you choose a password below!_

```
docker run --mount type=bind,target=/home/rstudio,source=$PWD -e PASSWORD=<PASSWORD> -p 8787:8787 jtaroni/2020-rladies-ml
```

Navigate to `localhost:8787` in your browser - this will be an RStudio Server running in the Docker container.
Enter `rstudio` as the username.
The password will be the password that you set in the above command.

### Building locally

Building locally allows you to make alterations to the Docker image by editing the `docker/Dockerfile`.
Assuming you are in the root directory of the repository, you can build the Docker image locally with the following command:

```
docker build -t <DOCKER_IMAGE_TAG> docker/.
```

And then to run the container, you can use the following:

```
docker run --mount type=bind,target=/home/rstudio,source=$PWD -e PASSWORD=<PASSWORD> -p 8787:8787 <DOCKER_IMAGE_TAG>
```

You can use the same instructions from above to log into RStudio Server!