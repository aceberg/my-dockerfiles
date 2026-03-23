FROM python:3.11-slim

WORKDIR /app

RUN apt-get update && apt-get install -y git \
    && rm -rf /var/lib/apt/lists/*

RUN git clone --depth 1 https://github.com/Flowseal/tg-ws-proxy.git .

RUN pip install --no-cache-dir .

ENTRYPOINT ["tg-ws-proxy"]
CMD ["--host", "0.0.0.0"]