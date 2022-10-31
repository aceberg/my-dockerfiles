[![atheos-ide](https://github.com/aceberg/my-dockerfiles/actions/workflows/atheos-ide.yml/badge.svg)](https://github.com/aceberg/my-dockerfiles/actions/workflows/atheos-ide.yml)
![Docker Image Size (latest semver)](https://img.shields.io/docker/image-size/aceberg/atheos-ide)

# Atheos IDE

Lightweight web-IDE

A Docker image of https://github.com/Atheos/Atheos

## Usage

```sh
mkdir -p ~/.dockerdata/atheos-ide
docker run --name atheos              \
    -v ~/.dockerdata/atheos-ide:/data \
    --user=1000:1000                  \
    -p 80:80                          \
    aceberg/atheos-ide
```

The IDE should be available at http://localhost


## Dockerfile

https://github.com/aceberg/my-dockerfiles/blob/main/atheos-ide/Dockerfile