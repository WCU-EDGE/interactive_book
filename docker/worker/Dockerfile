FROM rockylinux:9.3-minimal

USER root

COPY start-worker.sh /

RUN dnf install -y python3 && \
    dnf clean all && \
    pip install numpy pandas nltk

CMD ["/bin/bash", "/start-worker.sh"]
