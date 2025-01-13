# FROM rockylinux:9.3-minimal
FROM book-base:latest

USER root

ENV PIP_ROOT_USER_ACTION=ignore

COPY code-server/ /code-server
COPY start-master.sh /
COPY mkdocs/setup_mkdocs.sh /
COPY install.sh /

RUN /install.sh && rm /install.sh

# 8888: jupyter
# 8088: vscode-server
# 8000: mkdocs serve
EXPOSE 8888 8088 8000

CMD ["/bin/bash", "/start-master.sh"]
