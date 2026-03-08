FROM debian:bookworm-slim

RUN apt-get update && \
    apt-get install -y \
        dante-server && \
    rm -rf /var/lib/apt/lists/*

ENTRYPOINT ["danted"]
CMD ["-f", "/data/danted.conf"]