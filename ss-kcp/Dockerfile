FROM debian:bookworm-slim

RUN apt-get update && \
    apt-get install -y \
        kcptun \
        shadowsocks-libev \
        ca-certificates && \
    rm -rf /var/lib/apt/lists/*

COPY run.sh .

ENTRYPOINT ["bash", "run.sh"]
CMD ["sleep"]