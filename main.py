import base64

nama_file_asli = input("Masukkan nama file yang ingin dienkripsi: ")

try:
    with open(nama_file_asli, "rb") as nfa:
        data_binari = nfa.read()

    nama_file_enkripsi = nama_file_asli + ".RF"
    data_base64 = base64.b64encode(data_binari)
  
    with open(nama_file_enkripsi, "wb") as file_enkripsi:
        file_enkripsi.write(data_base64)

    print(f"File '{nama_file_asli}' telah dienkripsi dan disimpan sebagai '{nama_file_enkripsi}'.")
  
except FileNotFoundError:
    print(f"File '{nama_file_asli}' tidak ditemukan.")
