FROM ubuntu:bionic

ENV DEBIAN_FRONTEND noninteractive

RUN apt update &&\
    apt install -y texlive-xetex latex-cjk-chinese fonts-noto-cjk --no-install-recommends &&\
    apt autoremove -y && apt clean && rm -rf /var/lib/apt/lists* /tmp/* /var/tmp/*
