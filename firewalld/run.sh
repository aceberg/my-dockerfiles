#!/bin/bash

service dbus start
service firewalld start
tail -f /var/log/firewalld
