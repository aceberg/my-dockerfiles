# ssh-server
[![ssh-server](https://github.com/aceberg/my-dockerfiles/actions/workflows/ssh-server.yml/badge.svg)](https://github.com/aceberg/my-dockerfiles/actions/workflows/ssh-server.yml)

SSH container for port forwarding.

## Usage
Default user `sshuser`.
```sh
docker run --name ssh-server                        \
    -v ~/.dockerdata/ssh-server:/home/sshuser/.ssh  \
    -p 2222:2222                                    \
    aceberg/ssh-server
```
Default port is `2222`. It can be changed by passing `-p 2223` to the container.

To login with ssh key:
```sh
cp authorized_keys ~/.dockerdata/ssh-server/
chown 1000:1000 authorized_keys
chmod 600 authorized_keys
```

## Dockerfile

https://github.com/aceberg/my-dockerfiles/blob/main/ssh-server/Dockerfile



