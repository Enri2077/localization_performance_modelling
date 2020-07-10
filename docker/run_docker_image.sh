#!/bin/bash

# change USER in /home/${USER}/.ros/log if the host user name is not the same as the container user name

docker run -ti --rm \
    --name ${USER}_localization_benchmark_c0 \
    --user $(id -u):$(id -g) \
    -v ~/ds/performance_modelling:/root/ds/performance_modelling \
    -v ~/ds/performance_modelling/ros_logs:/home/${USER}/.ros/log \
    ${USER}/localization_benchmark:v1

