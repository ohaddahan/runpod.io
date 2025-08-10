#!/bin/bash
#
apt-get install python3.11
apt install python3.12-venv
#
git clone https://github.com/fpgaminer/joycaption.git
#
pip config set global.cache-dir /workspace/pip-cache
python3 -m venv .venv
source .venv/bin/activate
pip config set global.cache-dir /workspace/pip-cache
pip install -U pip
pip install torch torchvision torchaudio
pip install tensorflow
pip install -r requirements.txt
