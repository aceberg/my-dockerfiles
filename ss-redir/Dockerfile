FROM ubuntu:20.04

RUN apt update && apt install -y shadowsocks-libev iptables ipset kmod \
                                 && apt clean

COPY run.sh .

ENTRYPOINT ["bash", "run.sh"]
