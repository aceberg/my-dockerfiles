# ss-redir

Container with shadowsocks-libev in nat client mode.

## Config
Set the following env variables from your Shadowsocks server

| Variable  | Description |
| --------  | ----------- |
| SERVER_IP | Server IP (or hostname) |
| SERVER_PORT | Server port |
| PASSWORD | Password |
| METHOD | Encryption method |

## Usage
```
docker run --name ss-redir \
 --env SERVER_IP="YOUR_IP" \
 --env SERVER_PORT="PORT"  \
 --env PASSWORD="PW"       \
 --cap-add=NET_ADMIN       \
aceberg/ss-redir
```