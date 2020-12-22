# Create custom virtual network because default network does not resolve name to IP
docker network create my-network

# Create two containers from elasticsearch:2 image
docker container run --detach --name elasticsearch1 --network my-network --network-alias search elasticsearch:2
docker container run --detach --name elasticsearch2 --network my-network --network-alias search elasticsearch:2

# Run alpline nslookup search with --net to see the two containers list for the same DNS name
docker container run --rm --network my-network alpine:3.10 nslookup search

# Run centos curl -s search:9200 with --net multiple times until you see both "name" fields show
docker container run --rm --network my-network centos curl -s search:9200

# clean up
docker container stop elasticsearch1 elasticsearch2
docker container rm elasticsearch1 elasticsearch2