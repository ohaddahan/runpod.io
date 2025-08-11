#!/bin/bash
#
apt-get update
apt-get install python3.11 -y
apt install python3.12-venv -y
apt install vim -y
#
git clone https://github.com/fpgaminer/joycaption.git
#
python3 -m venv .venv
source .venv/bin/activate
pip config set global.cache-dir /workspace/pip-cache
pip install -U pip
#pip install torch torchvision torchaudio
#pip install tensorflow
pip install -r requirements.txt
pip install torchvision

export HF_HOME=/workspace/hf-home
export HF_HUB_CACHE=/workspace/hf-hub-cache


