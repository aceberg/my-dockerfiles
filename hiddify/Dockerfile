FROM alpine:3.23
WORKDIR /hiddify

RUN apk update && apk add --no-cache tzdata curl tar gzip libc6-compat sing-box

ENV VERSION=v4.1.0

RUN echo "Downloading https://github.com/hiddify/hiddify-core/releases/download/${VERSION}/hiddify-core-linux-amd64.tar.gz" && \
    curl -L -o hiddify-core.tar.gz https://github.com/hiddify/hiddify-core/releases/download/${VERSION}/hiddify-core-linux-amd64.tar.gz && \
    tar -xzf hiddify-core.tar.gz && rm hiddify-core.tar.gz

COPY run.sh /hiddify/hiddify-core-linux-amd64/run.sh
RUN chmod 755 /hiddify/hiddify-core-linux-amd64/run.sh

WORKDIR /hiddify/hiddify-core-linux-amd64

ENTRYPOINT ["./run.sh"]