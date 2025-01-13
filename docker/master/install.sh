#!/bin/bash

env PIP_ROOT_USER_ACTION=ignore

pip3 install jupyter jupyter-book && \
    pip3 install mkdocs-material markdown-include mkdocs-table-reader-plugin mkdocs-jupyter

curl -fsSL https://code-server.dev/install.sh | sh

mkdir -p /root/.config/code-server/ && \
    cp /code-server/config.yaml /root/.config/code-server/config.yaml && \
    mkdir -p /root/.local/share/code-server/User/ && \
    cp /code-server/settings.json /root/.local/share/code-server/User/ && \
    rm -Rf code-server

