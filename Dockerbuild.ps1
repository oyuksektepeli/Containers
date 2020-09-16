#build container from dockerfile
docker build . -t aci-container
docker build -t hede -f .\.Dockerfile .