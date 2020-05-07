# FROM nvidia/cuda:10.1-cudnn7-devel-ubuntu16.04
# FROM nvidia/cuda:8.0-cudnn7-runtime-ubuntu16.04
FROM nvidia/cudagl:10.1-devel-ubuntu16.04

USER root

RUN apt-get update && apt-get -y --no-install-recommends install \
    sudo \
    vim \
    wget \
    build-essential \
    autopoint \
    pkg-config \
    python3.5 \
    python3-pip \
    python3.5-dev \
    python3.5-venv \
    python-dev \
    python3-dev \
    nano lsb-release gnupg gnupg2 tmux

RUN apt-get -y --no-install-recommends install \
    git \
    zip \
    unzip \
    autoconf \
    automake \
    libtool \
    cmake \
    gstreamer-1.0 \
    gstreamer1.0-dev \
    gstreamer1.0-tools \
    gstreamer1.0-plugins-base \
    gstreamer1.0-plugins-good \
    gstreamer1.0-plugins-bad \
    gstreamer1.0-plugins-ugly \
    gstreamer1.0-libav \
    python-gst-1.0 \
    libgirepository1.0-dev \
    libgstreamer-plugins-base1.0-dev \
    libcairo2-dev \
    gir1.2-gstreamer-1.0 \
    python3-gi \
    python-gi-dev

ENV TZ=Europe/Kiev
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

RUN sh -c 'echo "deb http://packages.ros.org/ros/ubuntu $(lsb_release -sc) main" > /etc/apt/sources.list.d/ros-latest.list'
RUN apt-key adv --keyserver 'hkp://keyserver.ubuntu.com:80' --recv-key C1CF6E31E6BADE8868B172B4F42ED6FBAB17C654
RUN apt-get update
RUN apt-get install ros-kinetic-desktop-full -y && \
    rm -rf /var/lib/apt/lists/*

RUN apt-get update
RUN echo "source /opt/ros/kinetic/setup.bash" >> ~/.bashrc
RUN /bin/bash -c "source ~/.bashrc"
RUN /bin/bash -c "source /opt/ros/kinetic/setup.bash"
RUN apt-get -y --no-install-recommends install python-rosdep \
    python-rosinstall \
    python-rosinstall-generator \
    python-wstool \
    build-essential \
    python-rosdep

RUN rosdep init && rosdep update

