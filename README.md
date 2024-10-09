### Creating a Docker Image

```dockerfile
FROM node:21-alpine3.18
#Base Image to use

WORKDIR /app
#Working directory inside container

COPY . .
#first dot = source and second dot = destination

CMD ["npm","run","start:dev"]
#commands to execute when image is run
```

### Docker Commands

```bash
#Building Docker Images
docker build <src> -t <imagename:tagname>

#Listing Docker Images
docker images
docker image ls

#Removing Docker Images
docker rmi <imageids> #optional -f flag to remove forcefully when containers are running
docker image rm <imageids>

#Running docker image
docker run <imagename:tag>

#List docker containers
docker container ls  #can use -a optionally to list all containers which has run and exited before

#To run image in interactive mode to access terminal(for now linux bash)
docker run -it <imagename:tag> ../bin/sh #-e to set env variables

docker run --env-file=.env <imagename:tag> #Giving env file while running docker image

#list ids of all images
docker image ls -q

#remove all images
docker rmi $(docker image ls -q)

#To remove container
docker rmi <containerId>

#To remove all containers
docker rm $(docker container ls -q -a)
```

### Container Lifecycle

- Created
- Running
- Paused
- Stopped
- Deleted

### RUN vs CMD

**RUN** : Executed when image is created  
**CMD** : Executed when container is created

We can use _.dockerignore_ file to exclude files to copy while creating the image.

### Port Mapping

```bash
docker run -p <port_in_host_computer>:<port_in_docker_container> <imagename:tag>

#Example
docker run -p 3000:4000 myexpressapp

#This maps port 4000 from docker container to port 3000 inside host computer
```

### Running in deatch mode

```bash
#Example : This doesnot block the terminal
docker run -p 3000:4000 myexpressapp
```
