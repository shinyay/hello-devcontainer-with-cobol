FROM ubuntu:22.04-slim AS builder

ENV DEBIAN_FRONTEND=noninteractive
RUN apt-get update && apt-get install -y --no-install-recommends \
    gnucobol \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/* \
    && rm -rf /tmp/* /var/tmp/*

FROM ubuntu:22.04-slim
ENV DEBIAN_FRONTEND=noninteractive
COPY --from=builder /usr/bin/cobc /usr/bin/
COPY --from=builder /usr/bin/cobcrun /usr/bin/
COPY --from=builder /usr/lib/x86_64-linux-gnu/libcob.so* /usr/lib/x86_64-linux-gnu/
COPY --from=builder /usr/lib/x86_64-linux-gnu/libgmp.so* /usr/lib/x86_64-linux-gnu/
COPY --from=builder /lib/x86_64-linux-gnu/libncurses.so* /lib/x86_64-linux-gnu/
COPY --from=builder /lib/x86_64-linux-gnu/libtinfo.so* /lib/x86_64-linux-gnu/

RUN apt-get update && apt-get install -y --no-install-recommends \
    git \
    curl \
    make \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/* \
    && rm -rf /tmp/* /var/tmp/*

WORKDIR /workspace
