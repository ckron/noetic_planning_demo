FROM osrf/ros:noetic-desktop-full

MAINTAINER ckron

# for gnu screen
ENV SHELL /bin/bash

RUN apt-get update && apt-get install -y --no-install-recommends \
    git \
    vim \
    screen

# install dependency packages
RUN apt-get update && apt-get install -y --no-install-recommends \
    ros-noetic-turtlebot3 \
    ros-noetic-turtlebot3-gazebo \
    ros-noetic-gmapping \
    ros-noetic-dwa-local-planner \
    && rm -rf /var/lib/apt/lists/*

RUN echo "source /opt/ros/noetic/setup.bash" >> ~/.bashrc && \
    mkdir -p ~/ros_ws/src && \
    cd ~/ros_ws/src && \
    echo "source ~/ros_ws/devel/setup.bash" >> ~/.bashrc

ENV TURTLEBOT3_MODEL waffle