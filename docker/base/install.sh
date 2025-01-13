#!/bin/bash

env PIP_ROOT_USER_ACTION=ignore
# Not sure if vim is really a "needed" tool.
microdnf update -y
microdnf install -y python3 \
    python3-pip \
    curl \
    vim \
    bash-completion
microdnf clean all

pip install numpy pandas nltk matplotlib scikit-learn
