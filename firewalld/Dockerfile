FROM ubuntu:20.04

RUN apt update && apt install -y firewalld \
                                 nano net-tools curl \
                                 && apt clean

ENTRYPOINT ["/usr/sbin/firewalld", "--nofork", "--nopid"]
