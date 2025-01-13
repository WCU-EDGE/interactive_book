FROM rockylinux:9.3-minimal

USER root

COPY install.sh /

RUN /install.sh && rm /install.sh

EXPOSE 22
