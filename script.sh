#!/bin/bash

read -p "[$] Masukkan nama file yang ingin dienkripsi: " nfa
nfe="${nfa}.RF"
if [ ! -f "$nfa" ]; then
  echo "File $nfa tidak ditemukan."
  exit 1
fi
base64 "$nfa" > "$nfe"
echo "File $nfa telah dienkripsi."
