FROM ubuntu:xenial

LABEL \
  maintainer="Adil Rashitov <adil@wastelabs.co>" \
  org.opencontainers.image.title="osrm-backend" \
  org.opencontainers.image.description="Docker image for the Open Source Routing Machine (OSRM) osrm-backend." \
  org.opencontainers.image.authors="Adil Rashitov <adil@wastelabs.co>" \
  org.opencontainers.image.url="https://github.com/WasteLabs/DEV_osrm"

ENV OSRM_VERSION 5.22.0

# Let the container know that there is no TTY
ARG DEBIAN_FRONTEND=noninteractive

# Install packages
RUN apt-get -y update \
 && apt-get install -y -qq --no-install-recommends \
    build-essential \
    cmake \
    curl \
    ca-certificates \
    libbz2-dev \
    libstxxl-dev \
    libstxxl1v5 \
    libxml2-dev \
    libzip-dev \
    libboost-all-dev \
    lua5.2 \
    liblua5.2-dev \
    libtbb-dev \
    libluabind-dev \
    pkg-config \
    gcc \
    python-dev \
    python-pip \
    python-setuptools

RUN apt-get clean \
 && rm -rf /var/lib/apt/lists/* \
 && rm -rf /tmp/* /var/tmp/*

# Build osrm-backend
RUN mkdir /osrm-src \
 && cd /osrm-src \
 && curl --silent -L https://github.com/Project-OSRM/osrm-backend/archive/v$OSRM_VERSION.tar.gz -o v$OSRM_VERSION.tar.gz \
 && tar xzf v$OSRM_VERSION.tar.gz \
 && cd osrm-backend-$OSRM_VERSION \
 && mkdir build \
 && cd build \
 && cmake .. -DCMAKE_BUILD_TYPE=Release \
 && cmake --build . \
 && cmake --build . --target install \
 && mkdir /osrm-data \
 && mkdir /osrm-profiles \
 && cp -r /osrm-src/osrm-backend-$OSRM_VERSION/profiles/* /osrm-profiles \
 && rm -rf /osrm-src

# Set the entrypoint
COPY docker-entrypoint.sh /
RUN chmod +x /docker-entrypoint.sh
ENTRYPOINT ["/docker-entrypoint.sh"]

EXPOSE 5000
