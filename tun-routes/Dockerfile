FROM alpine:latest
RUN apk update && apk add --no-cache iproute2

HEALTHCHECK --start-period=5s --interval=5s --timeout=2s --retries=3 CMD ["test", "-f", "/success"]

COPY run.sh /run.sh
RUN chmod 755 /run.sh

ENTRYPOINT ["sleep", "infinity"]