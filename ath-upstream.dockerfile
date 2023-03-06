FROM debian:bookworm
LABEL maintainer="wonsup@pusnow.com"
LABEL org.opencontainers.image.source https://github.com/Pusnow/ath-custom

RUN apt-get update && \
    DEBIAN_FRONTEND=noninteractive apt-get upgrade -y &&\
    DEBIAN_FRONTEND=noninteractive \
    apt-get install -y \
    linux-source \
    && rm -rf /var/lib/apt/lists/* \
    && rm -rf /var/cache/apt/

CMD ["bash", "-c", "cp /usr/src/*.tar.xz /out/"]