#to see docker commands
docker -h | more
docker container --help

#To see docker verison
docker version

#detailed docker information
docker info

#to see local docker images
docker images
docker images ls
#show images values without trunc (ex. see the full image id)
docker images --no-trunc

#search online images from dockerhub
docker search ubuntu

#download docker image
docker pull ubuntu

#download specific image
docker pull ubuntu:19.10

#create and run container from image 
# 'd' for deattached mode 'it' for interactive mode
docker container run ubuntu
docker container run -P -d nginx
docker container run -d -p 8080:80 --name ubuntu1 ubuntu
docker container run -it --name temp ubuntu

#inspect docker container
docker inspect container1

#attach to existing and running container
docker attach <containerid>

#to see container logs
docker logs ubuntu1

#see running containers
docker ps 
docker container ls

#see all containers 
docker ps -a
docker container ls -a

#to execute command on container (executing sh command)
docker container exec -it devcontainer sh
docker container exec -it devcontainer /bin/bash

#to see live resource usage from container
docker container stats container1

#to see docker volumes
docker volume ls

#to create docker volumes 
docker volume create devvolume

#to inspect docker volumes
docker volume inspect devvolume

#to attach volume to container
docker container run -d --name devcontainer --mount source=devvolume,target=/app nginx
docker container run -d --name devcontainer2 -v devvolume:/app nginx

#to see volumes on linux
sudo ls /var/lib/docker/volumes
sudo ls /var/lib/docker/volumes/devvolume

#stop docker container
docker stop ubuntu1

#delete container 
docker rm ubuntu1
docker container rm ubuntu1

#delete all containers
Docker container rm -f $(docker ps -aq) 

#delete container image
docker rmi ubuntu
docker image rm ubuntu

#inspect docker image
docker inspect ubuntu

#see container ip, ports etc. 
docker inspect containername 

#to see docker image history
docker history ubuntu

#to login registry
docker login

#to tag docker images
docker tag ubuntu oyuksektepeli/ubuntucustom:v1

#to push images to repository
docker push oyuksektepeli/ubuntucustom:v1



