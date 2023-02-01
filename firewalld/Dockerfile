FROM ubuntu:20.04

RUN apt update && apt install -y firewalld \
                                 nano net-tools \
                                 && apt clean

COPY run.sh .

ENTRYPOINT ["bash", "run.sh"]
