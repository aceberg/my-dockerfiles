# apt-mirror

[![apt-mirror](https://github.com/aceberg/my-dockerfiles/actions/workflows/apt-mirror.yml/badge.svg)](https://github.com/aceberg/my-dockerfiles/actions/workflows/apt-mirror.yml)
![Docker Image Size (latest semver)](https://img.shields.io/docker/image-size/aceberg/apt-mirror)

Apt-mirror image (to work with [ss-redir](ss-redir))   
https://github.com/aceberg/my-dockerfiles

## Usage
Example mirror.list file [mirror.list](mirror.list)

```sh
docker run --name apt-mirror                                     \
    --network='container:ss-redir'                               \
    -v ~/.dockerdata/apt-mirror/mirror.list:/etc/apt/mirror.list \
    -v ~/.dockerdata/apt-mirror/data:/mirror                     \
    --restart no                                                 \
    aceberg/apt-mirror
```