FROM ubuntu:bionic-20181018

ENV LANG=C.UTF-8 TZ=Asia/Shanghai

RUN apt update &&\
    DEBIAN_FRONTEND=noninteractive apt install -y perl wget fontconfig fonts-noto-cjk --no-install-recommends &&\
    apt autoremove -y && apt clean && rm -rf /var/lib/apt/lists* /tmp/* /var/tmp/*

ADD texlive.profile /texlive.profile

RUN mkdir /texlive && cd /texlive &&\ 
    wget ftp://tug.org/historic/systems/texlive/2018/install-tl-unx.tar.gz &&\
    tar xzf install-tl-unx.tar.gz --strip-components=1 &&\
    ./install-tl --profile=/texlive.profile &&\
    cd && rm -rf /texlive /texlive.profile

ENV PATH=/usr/local/texlive/2018/bin/x86_64-linux:$PATH

CMD ["xelatex"]