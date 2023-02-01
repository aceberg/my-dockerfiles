# firewalld

[![firewalld](https://github.com/aceberg/my-dockerfiles/actions/workflows/firewalld.yml/badge.svg)](https://github.com/aceberg/my-dockerfiles/actions/workflows/firewalld.yml)
![Docker Image Size (latest semver)](https://img.shields.io/docker/image-size/aceberg/firewalld)

Firewalld for Docker Containers  
https://github.com/aceberg/my-dockerfiles/tree/main/firewalld


## Create firewalld container
IMPORTANT: `--cap-add=NET_ADMIN` needed for this to work!

```sh
docker run --name firewalld \
    -v $DOCKERDATAPATH/firewalld:/etc/firewalld \
    --cap-add=NET_ADMIN \
aceberg/firewalld
```
Firewall configuration will be saved in `/etc/firewalld`

## Create any client container
```sh
docker run --name ubuntu        \
--network='container:firewalld'  \
ubuntu
```
Now this `ubuntu` container will be using network through firewalld