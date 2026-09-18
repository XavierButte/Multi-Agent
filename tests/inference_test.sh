#à lancer seulement avec la machine 1

MODEL="models/bitnet_b1_58-large/ggml-model-i2_s.gguf"

#ip de la deuxième machine :
IP_2="x"

#mettre au-dessus de 49 152 et pas dépasser 65 535
PORT=x

#llama-bench est un benchmark pour mesurer la vitesse d'inférence, il faudra alors comparer avec un lancement avec un seul cpu sur une seule machine
#dans ce cas, il suffit d'enlever la partie du protocole rpc
./build/bin/llama-bench -m "$MODEL" -p 512 -n 128 \
  --rpc "$IP_2:$PORT" | tee resultats_test.txt
