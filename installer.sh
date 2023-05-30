#!/bin/sh

# License: GNU GPLv3

cd /home/$USER && git clone https://github.com/MichaelSebero/PrivateGPT4Linux && su -c '
GPT4ALL="curl -LO https://gpt4all.io/models/ggml-gpt4all-j-v1.3-groovy.bin"
ENV="curl -LO https://raw.githubusercontent.com/MichaelSebero/PrivateGPT4Linux-Installer/main/env/.env"

mkdir /home/models && cd /home/models && eval "$GPT4ALL" && cd /home/$USER/PrivateGPT4Linux && eval "$ENV" && pip install -r requirements.txt && chmod 777 /home/$USER/PrivateGPT4Linux/.env && chmod 777 /home/models -R && chmod 777 /usr/lib/python3.11/site-packages -R'
