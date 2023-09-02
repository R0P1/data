#!/bin/bash

keluar() {
  echo ""
  read -p "Tekan Enter untuk keluar."
  echo ""
  exit 0
}

read -p "Masukkan nama file yang ingin dideskripsi: " nfe
if [ -f "$nfe" ]; then
  nfd=$(basename "$nfe" .RF)
  base64 -d "$nfe" > "$nfd"
  echo "[+] File $nfe telah dideskripsi."
  keluar
else
  echo "[!] File $nfe tidak ditemukan."
  keluar
fi
