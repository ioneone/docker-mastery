# Check curl version in centos
docker container run --rm -it --name centos centos:7 bash
yum update curl
curl --version

# Check curl version in ubuntu
docker container run --rm -it --name ubuntu ubuntu:14.04 bash
apt-get update && apt-get install curl
curl --version