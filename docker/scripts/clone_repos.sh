#!/bin/bash

mkdir -p ~/w/catkin_ws/src
cd ~/w/catkin_ws/src

git clone https://github.com/Enri2077/performance_modelling.git
git clone --branch=melodic-devel https://github.com/Enri2077/localization_performance_modelling.git
git clone --branch=melodic-devel https://github.com/Enri2077/ground_truth_mapping.git
git clone --branch=melodic-devel https://github.com/Enri2077/gazebo_ros_pkgs.git
git clone --branch=melodic-ground-truth-mapping https://github.com/Enri2077/slam_toolbox.git

