[![node-bootstrap](https://github.com/aceberg/my-dockerfiles/actions/workflows/node-bootstrap.yml/badge.svg)](https://github.com/aceberg/my-dockerfiles/actions/workflows/node-bootstrap.yml)
![Docker Image Size (latest semver)](https://img.shields.io/docker/image-size/aceberg/node-bootstrap)

# Node Bootstrap

http-server hosting node modules for my projects locally

# Tags
[5.3.0](https://github.com/aceberg/my-dockerfiles/blob/main/node-bootstrap/Dockerfile-5.3.0), [latest](https://github.com/aceberg/my-dockerfiles/blob/main/node-bootstrap/Dockerfile-5.3.0):
- bootstrap@5.3.0
- bootstrap-icons@1.10.5
- bootswatch@5.3.0 with google fonts

## Usage

```sh
docker run --name node-bootstrap          \
    -p 8850:8850                          \
    aceberg/node-bootstrap
```

## Supported apps
- [miniboard](https://github.com/aceberg/miniboard)
- [WatchYourLAN](https://github.com/aceberg/WatchYourLAN)

## GitHub

https://github.com/aceberg/my-dockerfiles/tree/main/node-bootstrap