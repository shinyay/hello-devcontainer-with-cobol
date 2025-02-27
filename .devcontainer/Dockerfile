FROM ubuntu:22.04 AS builder

ENV DEBIAN_FRONTEND=noninteractive
RUN apt-get update && apt-get install -y --no-install-recommends \
    gnucobol \
    libxml2 \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/* \
    && rm -rf /tmp/* /var/tmp/*

FROM ubuntu:22.04
ENV DEBIAN_FRONTEND=noninteractive

# Install all required packages in the final image
RUN apt-get update && apt-get install -y --no-install-recommends \
    gnucobol \
    libxml2 \
    git \
    curl \
    make \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/* \
    && rm -rf /tmp/* /var/tmp/*

# Copy GnuCOBOL configuration files
COPY --from=builder /etc/gnucobol /etc/gnucobol

WORKDIR /workspace
