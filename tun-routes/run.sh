#!/bin/sh

TUN_ETH="${TUN_ETH:-tun0}"
TUN_GW="${TUN_GW:-198.18.0.1}"
PC_ETH="${PC_ETH:-eth0}"
PC_GW="${PC_GW:-192.168.1.1}"

BY_UID="${BY_UID:-1002}"

case "$1" in
  "start")
    ip rule add uidrange $BY_UID-$BY_UID lookup 110 pref 28000
    ip route add default via $PC_GW dev $PC_ETH metric 50 table 110

    ip route add default via $TUN_GW dev $TUN_ETH metric 1

    echo 1 > /success
    ;;
  "stop")
    ip rule del uidrange $BY_UID-$BY_UID lookup 110 pref 28000
    ip route del default via $PC_GW dev $PC_ETH metric 50 table 110
    ip route del default via $TUN_GW dev $TUN_ETH metric 1

    rm /success
    ;;
  "status")
    test -f /success
    ;;
  *)
    echo "Usage: start|status|stop"
    ;;
esac