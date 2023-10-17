[![node-bootstrap](https://github.com/aceberg/my-dockerfiles/actions/workflows/node-bootstrap.yml/badge.svg)](https://github.com/aceberg/my-dockerfiles/actions/workflows/node-bootstrap.yml)
![Docker Image Size (latest semver)](https://img.shields.io/docker/image-size/aceberg/node-bootstrap)

# Node Bootstrap

http-server hosting node modules for my projects locally

# Tags
[5.3.2](https://github.com/aceberg/my-dockerfiles/blob/main/node-bootstrap/Dockerfile-5.3.2), [latest](https://github.com/aceberg/my-dockerfiles/blob/main/node-bootstrap/Dockerfile-5.3.2):
- bootstrap@5.3.2
- bootstrap-icons@1.11.0
- bootswatch@5.3.2 with google fonts

<details>
  <summary>Old tags</summary>
    <a href="https://github.com/aceberg/my-dockerfiles/blob/main/node-bootstrap/Dockerfile-5.3.0">5.3.0</a>:<br>
    <li>bootstrap@5.3.0</li>
    <li>bootstrap-icons@1.10.5</li>
    <li>bootswatch@5.3.0 with google fonts</li>
</details>

## Usage
If you want to use local icons in [miniboard](https://github.com/aceberg/miniboard), download them and mount icon folder (`~/.dockerdata/icons` in this example) to `/app/icons`. Then you can open it in browser and copy each icon link to miniboard.
```sh
docker run --name node-bootstrap       \
    -v ~/.dockerdata/icons:/app/icons  \ # Only for local icons
    -p 8850:8850                       \
    aceberg/node-bootstrap
```

## Supported apps
- [miniboard](https://github.com/aceberg/miniboard)
- [WatchYourLAN](https://github.com/aceberg/WatchYourLAN)

## GitHub

https://github.com/aceberg/my-dockerfiles/tree/main/node-bootstrap