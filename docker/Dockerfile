FROM ros:melodic

ARG user_uid
ARG user_name
ARG user_gid
ARG user_group


# create user

RUN \
  groupadd --gid $user_gid $user_group && \
  useradd --uid $user_uid --gid $user_group --shell /bin/bash --create-home $user_name


# Install dependences

RUN \
  sudo apt update && \
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
    && rm -rf /var/lib/apt/lists/*

RUN \
  pip install pyquaternion && \
  pip3 install pyquaternion && \
  pip install networkx && \
  pip3 install networkx


# switch to user

USER $user_name:$user_group


# clone repos

RUN mkdir -p ~/w/catkin_ws/src
RUN \
  cd ~/w/catkin_ws/src && \
  git clone https://github.com/Enri2077/performance_modelling.git && \
  git clone --branch=melodic-devel https://github.com/Enri2077/localization_performance_modelling.git && \
  git clone --branch=melodic-devel https://github.com/Enri2077/ground_truth_mapping.git && \
  git clone --branch=melodic-devel https://github.com/Enri2077/gazebo_ros_pkgs.git && \
  git clone --branch=melodic-ground-truth-mapping https://github.com/Enri2077/slam_toolbox.git


# build workspace

RUN \
  source /opt/ros/melodic/setup.bash && \
  cd ~/w/catkin_ws && \
  catkin build && \
  echo "source ~/w/catkin_ws/devel/setup.bash" >> ~/.bashrc


RUN \
  cd ~/w/catkin_ws/src/performance_modelling/ && \
  ./install_dev.sh

COPY ros_entrypoint.sh /ros_entrypoint.sh

# temp
#RUN echo "alias r='rosrun localization_performance_modelling execute_grid_benchmark.py -g'" >> ~/.bashrc


