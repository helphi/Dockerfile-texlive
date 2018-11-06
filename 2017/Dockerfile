FROM ubuntu:bionic

ENV DEBIAN_FRONTEND noninteractive

RUN apt update &&\
    apt install -y texlive-xetex fonts-noto-cjk &&\
    apt autoremove -y && apt clean && rm -rf /var/lib/apt/lists* /tmp/* /var/tmp/*
