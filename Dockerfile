FROM alpine:3.12.3

# https://www.nasm.us/pub/nasm/releasebuilds/2.14.02/
ENV VERSION 2.14.02-r0

# Install qemu
RUN apk add --no-cache nasm=${VERSION} \
  && rm -rf /var/cache/apk/*

RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

ENTRYPOINT ["/usr/bin/nasm"]
CMD ["-h"]