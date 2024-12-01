FROM rockylinux:9.3

USER root

ENV PIP_ROOT_USER_ACTION=ignore

COPY code-server/config.yaml /
COPY start-master.sh /

RUN dnf update -y && \
    dnf install -y python3-full curl nano && \
    curl -fsSL https://code-server.dev/install.sh | sh && \
    mkdir -p /root/.config/code-server/ && \
    cp /config.yaml /root/.config/code-server/config.yaml && \
    dnf clean all

# setup Python packages
RUN pip3 install jupyter numpy pandas nltk jupyter-book && \
    pip3 install mkdocs-material markdown-include mkdocs-table-reader-plugin mkdocs-jupyter &&\

# 8888: jupyter
# 8088: vscode-server
# 8000: mkdocs serve
EXPOSE 8888 8088 8000

CMD ["/bin/bash", "/start-master.sh"]
