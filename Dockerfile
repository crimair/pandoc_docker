FROM ubuntu:16.04
COPY entrypoint.sh /usr/local/bin/entrypoint.sh
RUN apt update && \
  apt install -y locales && \
  rm -rf /var/lib/apt/lists/* && \
  localedef -i ja_JP -c -f UTF-8 -A /usr/share/locale/locale.alias ja_JP.UTF-8 && \
  apt update && \
  apt install -y gosu && \
  apt install -y texlive-latex-recommended texlive-xetex texlive-luatex && \
  apt install -y texlive-luatex texlive-lang-cjk lmodern texlive-xetex && \
  apt install -y python-pip wget lmodern fonts-lmodern && \
  wget https://github.com/jgm/pandoc/releases/download/2.3.1/pandoc-2.3.1-1-amd64.deb && \
  dpkg -i pandoc-*-amd64.deb && \
  wget https://github.com/lierdakil/pandoc-crossref/releases/download/v0.3.3.0/linux-ghc84-pandoc23.tar.gz -q -O - | tar xz && \
  mv pandoc-crossref /usr/bin/ && \
  chmod +x /usr/local/bin/entrypoint.sh
ENV LANG ja_JP.utf8
ENTRYPOINT ["/usr/local/bin/entrypoint.sh"]
