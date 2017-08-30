FROM ubuntu:xenial

RUN set -x \
    && apt-get update \
    && apt-get dist-upgrade -y \
    && apt-get install -y --no-install-recommends \
        dnsutils \
        netcat-openbsd

COPY ./submersible /submersible
ENTRYPOINT /submersible
