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
#Buildinhg Docker Images
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

```
