#!/bin/bash

sudo apt update

sudo apt install -y \
    python-pandas \
    python3-pandas \
    python-termcolor \
    python3-termcolor \
    python-psutil \
    python3-psutil \
    python-pip \
    python3-pip \
    python-catkin-tools \
    ros-melodic-catkin \
    ros-melodic-gazebo-ros \
    ros-melodic-gazebo-plugins \
    ros-melodic-control-toolbox \
    ros-melodic-controller-manager \
    ros-melodic-transmission-interface \
    ros-melodic-joint-limits-interface \
    ros-melodic-robot-state-publisher \
    ros-melodic-map-server \
    ros-melodic-slam-toolbox \
    ros-melodic-amcl \
    ros-melodic-move-base \
    ros-melodic-dwa-local-planner \

pip install pyquaternion
pip3 install pyquaternion
pip install networkx
pip3 install networkx

rm -rf /var/lib/apt/lists/*

