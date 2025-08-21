#!/bin/bash
# git clone https://github.com/fpgaminer/joycaption.git

export HF_HOME=/workspace/hf-home
export HF_HUB_CACHE=/workspace/hf-hub-cache
apt-get update
apt-get install python3.11 -y
apt install python3.12-venv -y
apt install vim -y
apt install rsync -y
apt install libssl-dev -y
pip config set global.cache-dir /workspace/pip-cache

curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh

python3 -m venv .venv
source .venv/bin/activate
pip config set global.cache-dir /workspace/pip-cache
pip install -U pip
#pip install torch torchvision torchaudio
#pip install tensorflow
pip install -r requirements.txt
pip install torchvision



