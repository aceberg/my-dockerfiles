# apt-mirror

Apt-mirror image (to work with [ss-redir](ss-redir))

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