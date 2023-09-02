#!/bin/bash

keluar(){
  echo ""
  read -p "Tekan Enter untuk melanjutkan."
  echo ""
  bash main.sh
}

read -p "[$] Masukkan nama file yang ingin dideskripsi: " nfe
if [ -f "$nfe" ]; then
  nfd=$(basename "$nfa" .RF)
  base64 -d "$nfe" > "$nfd"
  echo "[+] File $nfe telah dideskripsi."
  keluar
  exit 0
else
  echo "[!] File $nfe tidak ditemukan."
  keluar
  exit 1
fi
