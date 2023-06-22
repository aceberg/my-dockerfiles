[![node-bootstrap](https://github.com/aceberg/my-dockerfiles/actions/workflows/node-bootstrap.yml/badge.svg)](https://github.com/aceberg/my-dockerfiles/actions/workflows/node-bootstrap.yml)
![Docker Image Size (latest semver)](https://img.shields.io/docker/image-size/aceberg/node-bootstrap)

# Node Bootstrap

http-server hosting node modules for my projects locally:
- bootstrap@5.3.0
- bootstrap-icons@1.10.5
- bootswatch@5.3.0

## Usage

```sh
docker run --name node-bootstrap          \
    -v ~/.dockerdata/node-bootstrap:/data \
    -p 8850:8850                          \
    aceberg/node-bootstrap
```

## Dockerfile

https://github.com/aceberg/my-dockerfiles/blob/main/node-bootstrap/Dockerfile