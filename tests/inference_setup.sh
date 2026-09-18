#!/bin/bash
# à lancer sur les deux machines

git clone --recursive https://github.com/microsoft/BitNet.git
cd BitNet

python -m venv venv
source venv/bin/activate
# pour windows plutôt ceci : 
# source venv/Scripts/activate

pip install -r requirements.txt

python setup_env.py -md models/bitnet_b1_58-large -q i2_s

cmake -B build -DGGML_RPC=ON
cmake --build build --config Release -j

echo "Terminé."
