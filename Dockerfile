FROM ubuntu:latest

RUN \
    apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* \
    && apt-get update -y

RUN \
    apt-get install -y \
    build-essential \
    curl \
    git \
    lsb-base \
    lsb-release \
    python3 \
    sudo

RUN \
    cd / \
    && git clone https://chromium.googlesource.com/chromium/tools/depot_tools.git

ENV PATH=/depot_tools:$PATH

RUN mkdir webrtc_android && cd webrtc_android
