FROM ubuntu:16.04
COPY entrypoint.sh /usr/local/bin/entrypoint.sh
RUN apt update && \
    apt install -y locales && \
    rm -rf /var/lib/apt/lists/* && \
    localedef -i ja_JP -c -f UTF-8 -A /usr/share/locale/locale.alias ja_JP.UTF-8 && \
    apt update && \
    apt install -y git && \
    apt install -y gosu && \
    apt install -y pandoc && \
    apt install nodejs && \
    apt install npm && \
    apt install curl && \
    apt install chromium-browser && \
    npm cache clean && \
    npm install -g n&& \
    n stable && \
    npm update -g npm && \
    npm install -g yarn && \
    yarn global add mermaid && \
    yarn global add mermaid.cli && \
    yarn global add pandoc-filter && \
    yarn global add pandoc-mermaid-filter && \
    yarn global add pandoc-plantuml-filter && \
    apt install -y haskell-platform && \
    cabal update && \
    cabal install --global pandoc-crossref && \
    apt install -y texlive-latex-recommended texlive-xetex texlive-luatex pandoc-citeproc && \
    apt install -y texlive-luatex texlive-lang-cjk lmodern texlive-xetex && \
    chmod +x /usr/local/bin/entrypoint.sh
ENV LANG ja_JP.utf8
#ENTRYPOINT ["/usr/local/bin/entrypoint.sh"]
