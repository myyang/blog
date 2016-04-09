#!/bin/bash

cd /var/blog

if [ -d content ];then
    echo "hugo exists!"
else
    hugo new site .
fi

if [ -d "themes/hyde-x" ]; then
    echo "hydex-x theme exists!"
else
    mkdir -p themes/
    git clone https://github.com/zyro/hyde-x themes/hyde-x
fi

# update config
cp /config.templ config.toml
cp /hyde-overrides.css themes/hyde-x/static/css/
cp /poole-overrides.css themes/hyde-x/static/css/
hugo server -w -b "https://$BLOG_URL" --bind="0.0.0.0" -v -p $BLOG_PORT -d /var/_built
