#!/bin/bash

keluar(){
  echo ""
  read -p "Tekan Enter untuk keluar."
  echo ""
}

read -p "[$] Masukkan nama file yang ingin dienkripsi: " nfa
if [ -f "$nfa" ]; then
  nfe="${nfa}.RF"
  base64 "$nfa" > "$nfe"
  echo "[+] File $nfa telah dienkripsi."
  keluar
  exit 0
else
  echo "[!] File $nfa tidak ditemukan."
  keluar
  exit 1
fi
