from debian:jessie

volume /var/blog /var/_built

env HUGOV 0.15

run apt-get update && apt-get install -y wget git mercurial\
    && wget https://github.com/spf13/hugo/releases/download/v${HUGOV}/hugo_${HUGOV}_linux_amd64.tar.gz \
    && tar zxf hugo_${HUGOV}_linux_amd64.tar.gz \
    && mv hugo_${HUGOV}_linux_amd64/hugo_${HUGOV}_linux_amd64 /usr/bin/hugo \
    && rm -rf hugo_*

run wget https://bootstrap.pypa.io/get-pip.py \
    && python get-pip.py \
    && pip install rst2html5 \
    && ln -s /usr/local/bin/rst2html5 /usr/bin/rst2html.py \
    && rm get-pip.py

workdir /var/blog

expose 1313

add start-service.sh config.templ poole-overrides.css hyde-overrides.css /
cmd [ "/start-service.sh" ]
