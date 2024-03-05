#!/bin/sh

# License: GNU GPLv3

git clone https://github.com/imartinez/privateGPT.git && cd privateGPT && git checkout primordial && cd /home/$USER/privateGPT && pip install -r requirements.txt --break-system-packages --user && su -c '
GPT4ALL="curl -LO https://gpt4all.io/models/gguf/nous-hermes-llama2-13b.Q4_0.gguf"
ENV="curl -LO https://raw.githubusercontent.com/MichaelSebero/PrivateGPT4Linux/main/.env"

mkdir /home/models && cd /home/models && eval "$GPT4ALL" && cd /home/$USER/privateGPT && eval "$ENV" && chmod 777 /home/$USER/privateGPT/.env && rm /home/$USER/privateGPT/source_documents/state_of_the_union.txt && chmod 777 /home/models -R'
