FROM toshiara/alpine-texlive-ja

LABEL maintainer="fastriver_org" \
      description="TexLive2020 and Pandoc 2.13 for Japanese"

RUN apk add --no-cache \
    gmp \
    libffi \
    git

# install pandoc
RUN mkdir -p /pandoc-build && cd /pandoc-build \
    && wget https://github.com/jgm/pandoc/releases/download/2.13/pandoc-2.13-linux-amd64.tar.gz \
    && tar xvzf pandoc-2.13-linux-amd64.tar.gz --strip-components 1 -C /usr/local

# install pandoc-crossref
RUN wget https://github.com/lierdakil/pandoc-crossref/releases/download/v0.3.10.0a/pandoc-crossref-Linux.tar.xz \
 && tar Jxfv pandoc-crossref-Linux.tar.xz \
 && mv pandoc-crossref /usr/bin/ \
 && cd / && rm -Rf /pandoc-build

RUN cd \
    && mkdir .pandoc-crossref \
    && cd .pandoc-crossref \
    && echo -e "figureTitle: \"図 \"\ntableTitle: \"表 \"\nlistingTitle: \"コード \"\nfigPrefix: \"図\"\neqnPrefix: \"式\"\ntblPrefix: \"表\"\nlstPrefix: \"コード\"" > config.yaml

VOLUME ["/workspace", "/root/.pandoc/templates"]
WORKDIR /workspace

COPY template ./template
