Nama  : Azhar Khairu Hafidz, Aziz Faturrahman, Nashrullah Al Himni Rusydi
NIM   : 707012400102
Kelas : D4SIKC-4801
Kel   : Kel 2




Penjelasan Jawaban:
Soal 1: Modifikasi output
Ubah i menjadi 18 untuk memulai hari awalnya dan batasi menjadi <= 27 atau bisa menggunakan <28 agar outputnya menjadi sesuai
start dari hari ke 18 hingga 27

Soal 2: Fungsi go()

go(30) = 15
Fungsi mencari selisih maksimum antar faktor berurutan
Faktor 30: 1,2,3,5,6,10,15,30
Selisih terbesar: 30-15 = 15

Soal 3: Fungsi panas() dan dingin()

panas(x) = jumlah digit dari x
dingin(x,y) = cari kelipatan y yang digit sumnya = x
dingin(10,7) = mencari kelipatan 7 dengan digit sum = 10
dingin(2,35) = mencari kelipatan 35 dengan digit sum = 2

Soal 4: Kalkulator Basis
Masalah: Kalkulator rusak yang menampilkan digit ≥10 dalam bentuk desimal.
Contoh B=16, Y="114240":

Bisa jadi: [1][1][4][2][4][0] (semua digit < 16)
Bisa jadi: [1][14][2][4][0] (14 = digit E dalam hex)
Ada 3 kemungkinan bilangan X berbeda

Algoritma: Dynamic Programming untuk menghitung semua kemungkinan parsing string Y menjadi digit-digit valid dalam basis B.
