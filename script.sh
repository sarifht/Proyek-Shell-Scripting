#!/bin/bash

# Kriteria 1
# Menampilkan ukuran memory pada sistem dalam satuan megabytes
echo "=== Menampilkan Ukuran Memory ==="
echo "Keterangan: Menampilkan ukuran memory pada sistem dalam satuan megabytes."
free --mega
echo
sleep 1

# Menampilkan penggunaan ruang disk pada filesystem dalam satuan gigabytes
echo "=== Menampilkan Penggunaan Ruang Disk ==="
echo "Keterangan: Menampilkan penggunaan ruang disk pada filesystem dalam satuan gigabytes."
df -h -BG
echo
sleep 1

# Menampilkan penggunaan ruang disk pada filesystem hanya untuk kolom Filesystem dan Use%
echo "=== Menampilkan Penggunaan Ruang Disk (Filesystem & Use%) ==="
echo "Keterangan: Menampilkan penggunaan ruang disk pada filesystem hanya untuk kolom Filesystem dan Use%."
echo "Filesystem Use%"
df -h | grep -vE '^Filesystem|tmpfs' | awk '{print $1,$5}'
echo

# Kriteria 2
# Menyimpan riwayat perintah pada berkas history.txt
echo "=== Menyimpan Riwayat Perintah ==="
echo "Keterangan: Menyimpan riwayat perintah pada berkas history.txt."
history > history.txt
echo

# Variabel name dengan nilai Nama Lengkap
name="Sarif Hidayatullah"

# Menampilkan pesan "Hello, my name is ${name}"
echo "Hello, my name is ${name}"

# Menggunakan perulangan while untuk menjalankan perintah pada berkas script sebanyak 3 kali
echo "=== Menjalankan Perulangan ==="
echo "Keterangan: Menjalankan perintah pada berkas script sebanyak 3 kali."
counter=1
while [ $counter -le 3 ]
do
    echo "Iterasi ke-$counter"
    # Tambahkan perintah yang ingin dijalankan di sini
    # Misalnya: echo "Ini adalah iterasi ke-$counter"
    ((counter++))
    sleep 1
done

