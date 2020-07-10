FROM ros:melodic

RUN mkdir -p /root/install_scripts

COPY scripts/install_dependences.sh /root/install_scripts/install_dependences.sh
RUN /root/install_scripts/install_dependences.sh

COPY scripts/clone_repos.sh /root/install_scripts/clone_repos.sh
RUN /root/install_scripts/clone_repos.sh

COPY scripts/build_workspace.sh /root/install_scripts/build_workspace.sh
RUN /root/install_scripts/build_workspace.sh

COPY scripts/install_performance_modelling_py.sh /root/install_scripts/install_performance_modelling_py.sh
RUN /root/install_scripts/install_performance_modelling_py.sh

COPY scripts/ros_entrypoint.sh /ros_entrypoint.sh
RUN echo "cd ~" >> ~/.bashrc

# temp
RUN echo "alias r='rosrun localization_performance_modelling execute_grid_benchmark.py -g'" >> ~/.bashrc

