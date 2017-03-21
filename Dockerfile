FROM alpine

ENV LANG=C.UTF-8

RUN apk --no-cache add perl wget xz

RUN wget -q http://mirror.ctan.org/systems/texlive/tlnet/install-tl-unx.tar.gz && \
    mkdir install-tl-unx && \
    tar xzf install-tl-unx.tar.gz -C install-tl-unx --strip-components=1 && \
    printf "%s\n" \
      "selected_scheme scheme-full" \
      "option_doc 0" \
      "option_src 0" \
      > texlive.profile && \
    install-tl-unx/install-tl --profile=texlive.profile && \
    rm -rf install-tl-unx install-tl-unx.tar.gz texlive.profile
    
ENV PATH $PATH:/usr/local/texlive/2016/bin/x86_64-linux
