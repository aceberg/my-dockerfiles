[![node-bootstrap](https://github.com/aceberg/my-dockerfiles/actions/workflows/node-bootstrap.yml/badge.svg)](https://github.com/aceberg/my-dockerfiles/actions/workflows/node-bootstrap.yml)
![Docker Image Size (latest semver)](https://img.shields.io/docker/image-size/aceberg/node-bootstrap)

# Node Bootstrap

http-server hosting node modules for my projects locally

# Tags

<a href="https://github.com/aceberg/my-dockerfiles/blob/main/node-bootstrap/Dockerfile-5.3.3">5.3.3</a>, latest:
    <li>bootstrap@5.3.3</li>
    <li>bootstrap-icons@1.11.3</li>
    <li><a href="https://github.com/aceberg/aceberg-bootswatch-fork">my fork</a> of bootswatch@5.3.3 (more themes) with google fonts</li>
    <li>chart.js@4.4.3</li>
    <li>chartjs-chart-matrix@2.0.1</li>

<details>
  <summary>Old tags</summary>
    <a href="https://github.com/aceberg/my-dockerfiles/blob/main/node-bootstrap/Dockerfile-5.3.2-a">5.3.2-a</a>:<br>
    <li>bootstrap@5.3.2</li>
    <li>bootstrap-icons@1.11.0</li>
    <li><a href="https://github.com/aceberg/aceberg-bootswatch-fork">my fork</a> of bootswatch@5.3.2 (more themes) with google fonts</li>
    <li>chart.js@4.4.1</li>
    <li>chartjs-chart-matrix@2.0.1</li>
    <a href="https://github.com/aceberg/my-dockerfiles/blob/main/node-bootstrap/Dockerfile-5.3.2">5.3.2</a>:<br>
    <li>bootstrap@5.3.2</li>
    <li>bootstrap-icons@1.11.0</li>
    <li>bootswatch@5.3.2 with google fonts</li>
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
- [ClickAHabit](https://github.com/aceberg/ClickAHabit)
- [ExerciseDiary](https://github.com/aceberg/ExerciseDiary)
- [miniboard](https://github.com/aceberg/miniboard)
- [WatchYourLAN](https://github.com/aceberg/WatchYourLAN)
- [WatchYourPorts](https://github.com/aceberg/WatchYourPorts)

## GitHub

https://github.com/aceberg/my-dockerfiles/tree/main/node-bootstrap