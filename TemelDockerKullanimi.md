DCOKER USAGE

docker version 
docker info
docker images


docker search ubuntu
docker pull ubuntu

docker run -d -p 8080:8080 --name ubuntu1 ubuntu

docker logs ubuntu1

docker images
docker images ls

docker exec -it ubuntu1 sh
ls -al

exit

docker ps
docker stop 
docker ps -a 
docker start
