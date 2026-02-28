#!/bin/bash

ss-local -c /data/ss-client.json & \
kcptun-client -c /data/kcp-client.json


case "$1" in
  client)
    ss-local -c /data/ss-client.json & \
    kcptun-client -c /data/kcp-client.json
    ;;
  server)
    ss-server -c /data/ss-server.json & \
    kcptun-server -c /data/kcp-server.json
    ;;
  sleep)
    sleep infinity
    ;;
  *)
    echo "Usage: {client|server|sleep}"
    exit 1
    ;;
esac