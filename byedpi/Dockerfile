FROM docker.io/alpine AS build
RUN apk add --no-cache build-base git linux-headers
WORKDIR /usr/local/src/byedpi
RUN git clone https://github.com/hufrea/byedpi /usr/local/src/byedpi
RUN LDFLAGS=-static make

FROM scratch AS ciadpi
COPY --from=build /usr/local/src/byedpi/ciadpi /bin/
ENTRYPOINT ["/bin/ciadpi"]
