#!/bin/bash

sudo docker run -ti --rm \
    --name ${USER}_test_container \
    -v ~/ds/performance_modelling:/root/ds/performance_modelling \
    ${USER}/localization_benchmark:test

