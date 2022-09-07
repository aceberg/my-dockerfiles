#!/bin/bash

ss-redir -s $SERVER_IP -p $SERVER_PORT -l 1080 -k $PASSWORD -b 127.0.0.1 -m $METHOD &
ss-nat -s $SERVER_IP -l 1080 -o
sleep infinity
