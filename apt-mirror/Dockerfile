FROM ubuntu:20.04

RUN apt update && apt install -y apt-mirror \
                                 nano net-tools curl \
                                 && apt clean

RUN mkdir -p /mirror/{mirror,var,scel}

ENTRYPOINT ["apt-mirror"]
