# BrainIAK Cloud Service

## Installing on Ubuntu 16.04 (tested on AWS EC2 c4.8xlarge)
A few installation notes before installation steps:
- Requires TCP/21216 open

```
# Install dependencies
./bin/install

# Build Docker image
./bin/build

# Run Docker container
./bin/run
```

You can add users via
```
# Get docker container ID
sudo docker ps

# Run bash in that container
./bin/bash [CONTAINER_ID]

# Create a user
useradd -ms /bin/bash [USER]
passwd [USER]
```

Now, you can access from ```[IP]:21216```

## TODO
- Add mechanism for modifying a container nicely and commit the image without disrupting service too much
