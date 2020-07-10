#!/bin/bash

source /opt/ros/melodic/setup.bash
cd ~/w/catkin_ws
catkin build
echo "source ~/w/catkin_ws/devel/setup.bash" >> ~/.bashrc

