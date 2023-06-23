#!/bin/sh

# License: GNU GPLv3

git clone https://github.com/imartinez/privateGPT && cd /home/$USER/privateGPT && pip install -r requirements.txt --break-system-packages && su -c '
GPT4ALL="curl -LO https://gpt4all.io/models/ggml-gpt4all-j-v1.3-groovy.bin"
ENV="curl -LO https://raw.githubusercontent.com/MichaelSebero/PrivateGPT4Linux/main/.env"

mkdir /home/models && cd /home/models && eval "$GPT4ALL" && cd /home/$USER/privateGPT && eval "$ENV" && chmod 777 /home/$USER/privateGPT/.env && rm /home/user/privateGPT/source_documents/state_of_the_union.txt && chmod 777 /home/models -R'
