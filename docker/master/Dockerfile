FROM rockylinux:9.3-minimal

USER root

COPY start-master.sh /

ENV SPARK_MASTER_PORT=7077
ENV SPARK_MASTER_WEBUI_PORT=8080
ENV SPARK_MASTER_LOG=/spark/logs

RUN dnf update -y && \
    dnf install -y python3 curl nano && \
    dnf clean all && \
    pip install jupyter numpy pandas nltk jupyter-book && \
    curl -fsSL https://code-server.dev/install.sh | sh

# 8888: jupyter
# 8088: vscode-server
EXPOSE 8888 8088

CMD ["/bin/bash", "/start-master.sh"]
