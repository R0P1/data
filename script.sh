#!/bin/bash

read -p "[$] Masukkan nama file yang ingin dienkripsi: " nfa
if [ -f "$nfa" ]; then
  nfe="${nfa}.RF"
  base64 "$nfa" > "$nfe"
  echo "[+] File $nfa telah dienkripsi."
  exit 0
else
  echo "[!] File $nfa tidak ditemukan."
  exit 1
fi
