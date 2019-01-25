FROM ubuntu:16.04
COPY entrypoint.sh /usr/local/bin/entrypoint.sh
RUN apt update && \
    apt install -y locales && \
    rm -rf /var/lib/apt/lists/* && \
    localedef -i ja_JP -c -f UTF-8 -A /usr/share/locale/locale.alias ja_JP.UTF-8 && \
    apt update && \
    apt install -y gosu && \
    apt install -y pandoc && \
    apt install -y haskell-platform && \
    cabal update && \
    cabal install --global pandoc-crossref && \
    apt install -y texlive-latex-recommended texlive-xetex texlive-luatex pandoc-citeproc && \
    apt install -y texlive-luatex texlive-lang-cjk lmodern texlive-xetex && \
    chmod +x /usr/local/bin/entrypoint.sh
ENV LANG ja_JP.utf8
ENTRYPOINT ["/usr/local/bin/entrypoint.sh"]
