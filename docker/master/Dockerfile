FROM rockylinux:9.3-minimal

USER root

COPY code-server/config.yaml /
COPY start-master.sh /
COPY mkdocs/setup_mkdocs.sh /

RUN dnf update -y && \
    dnf install -y python3-full curl nano && \
    curl -fsSL https://code-server.dev/install.sh | sh && \
    mkdir -p /root/.config/code-server/ && \
    cp /config.yaml /root/.config/code-server/config.yaml && \
    dnf clean all
    
RUN bash setup_mkdocs.sh && \
    rm /setup_mkdocs.sh


# 8888: jupyter
# 8088: vscode-server
# 8000: mkdocs serve
EXPOSE 8888 8088 8000


CMD ["/bin/bash", "/start-master.sh"]
