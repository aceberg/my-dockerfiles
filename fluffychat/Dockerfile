FROM nginx:1.29-alpine3.22

WORKDIR /usr/share/nginx/html

# Clean default Nginx HTML files
RUN rm -rf ./*

RUN apk add --no-cache curl tar sed

RUN curl -L https://github.com/krille-chan/fluffychat/releases/download/v2.0.0/fluffychat-web.tar.gz -o fluffychat-web.tar.gz && \
    tar -xzf fluffychat-web.tar.gz && \
    rm fluffychat-web.tar.gz && \
    mv build/web/* . && \
    rmdir -p build/web || true && \
    sed -i 's|<base href="/web/">|<base href="/">|' index.html

EXPOSE 80
