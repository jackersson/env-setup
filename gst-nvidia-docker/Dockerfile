FROM nvidia/cuda:10.0-cudnn7-devel-ubuntu18.04

USER root

RUN apt-get update && apt-get -y --no-install-recommends install \
    sudo \
    vim \
    wget \
    build-essential \
    autopoint \
    pkg-config \
    python3.6 \
    python3-pip \
    python3.6-dev \
    python3.6-venv \
    python-dev

RUN apt-get -y --no-install-recommends install \
    git \
    zip \
    unzip \
    autoconf \
    automake \
    libtool \
    gstreamer-1.0 \
    gstreamer1.0-dev \
    gstreamer1.0-tools \
    gstreamer1.0-plugins-base \
    gstreamer1.0-plugins-good \
    gstreamer1.0-plugins-bad \
    gstreamer1.0-plugins-ugly \
    gstreamer1.0-libav \
    gstreamer1.0-gl \
    python-gst-1.0 \
    libgirepository1.0-dev \
    libgstreamer-plugins-base1.0-dev \
    libcairo2-dev \
    gir1.2-gstreamer-1.0 \
    python3-gi \
    python-gi-dev

RUN mkdir /home/gstreamer
COPY * /home/gstreamer/

RUN cd /home/gstreamer && ./install_video_codec_sdk.sh \
    && ./build_nvidia_gst_plugins.sh


