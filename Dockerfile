FROM alpine

ENV PATH /usr/local/texlive/2016/bin/x86_64-linux:$PATH

RUN apk --no-cache add perl && \
    mkdir /tmp/install-tl-unx && \
    wget -q http://mirror.ctan.org/systems/texlive/tlnet/install-tl-unx.tar.gz && \
    tar xzf install-tl-unx.tar.gz && \
    printf "%s\n" \
      "selected_scheme scheme-full" \
      "option_doc 0" \
      "option_src 0" \
      > texlive.profile && \
    install-tl-unx/install-tl --profile=texlive.profile && \
    rm -rf install-tl-unx*
