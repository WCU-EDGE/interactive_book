FROM rockylinux:9.3-minimal

USER root

COPY start-master.sh /

ENV SPARK_MASTER_PORT=7077
ENV SPARK_MASTER_WEBUI_PORT=8080
ENV SPARK_MASTER_LOG=/spark/logs

RUN dnf install -y python3 && \
    dnf clean all && \
    pip install jupyter numpy pandas nltk jupyter-book

EXPOSE 8080

CMD ["/bin/bash", "/start-master.sh"]
