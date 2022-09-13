# ss-redir

[![ss-redir](https://github.com/aceberg/my-dockerfiles/actions/workflows/ss-redir.yml/badge.svg)](https://github.com/aceberg/my-dockerfiles/actions/workflows/ss-redir.yml)
![Docker Image Size (latest semver)](https://img.shields.io/docker/image-size/aceberg/ss-redir)

Shadowsocks-libev client in nat mode   
https://github.com/aceberg/my-dockerfiles/tree/main/ss-redir

## Config
Set the following env variables from your Shadowsocks server

| Variable  | Description |
| --------  | ----------- |
| SERVER_IP | Server IP (or hostname) |
| SERVER_PORT | Server port |
| PASSWORD | Password |
| METHOD | Encryption method |

## Usage
### Create shadowsocks container
IMPORTANT: `--cap-add=NET_ADMIN` needed for this to work!

```sh
docker run --name ss-redir \
 --env SERVER_IP="YOUR_IP" \
 --env SERVER_PORT="PORT"  \
 --env PASSWORD="PW"       \
 --env METHOD="METHOD"     \
 --cap-add=NET_ADMIN       \
aceberg/ss-redir
```
### Create any client container
```sh
docker run --name ubuntu        \
--network='container:ss-redir'  \
ubuntu
```
Now this `ubuntu` container will be using network through shadowsocks proxy