#!/usr/bin/env python

from distutils.core import setup
from catkin_pkg.python_setup import generate_distutils_setup

# for your packages to be recognized by python
d = generate_distutils_setup(
 packages=['localization_performance_modelling_ros'],
 package_dir={'localization_performance_modelling_ros': 'src/localization_performance_modelling_ros'}
)

setup(**d)
