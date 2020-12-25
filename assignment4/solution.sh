# Build docker image from Dockerfile
docker image build -t my-node .  

# Run the image to make sure it works as expected
docker container run --rm -p 80:3000 my-node 

# Login to Docker
docker login 

# Rename the image and prepare to push
docker image tag my-node oneone11/my-node

# Push the image to Docker Hub
docker image push oneone11/my-node

# Remove the image from cache
# Both my-node and oneone11/my-node point to the same image ID
docker image rm my-node oneone11/my-node

# Install oneone11/my-node from Docker Hub and run it
docker container run --rm -p 80:3000 oneone11/my-node
