FROM node:22.11.0-slim

USER root

COPY start-master.sh /

ENV SPARK_MASTER_PORT=7077
ENV SPARK_MASTER_WEBUI_PORT=8080
ENV SPARK_MASTER_LOG=/spark/logs

RUN apt update && \
    apt install -y curl && \
    curl -fsSL https://code-server.dev/install.sh | sh

# 8088: vscode-server
EXPOSE 8088

CMD ["/bin/bash", "/start-master.sh"]
