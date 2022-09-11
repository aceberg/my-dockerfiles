FROM ubuntu:20.04

RUN apt update && apt install -y apt-mirror \
                                 && apt clean

RUN mkdir -p /mirror/{mirror,var,scel}

ENTRYPOINT ["apt-mirror"]
