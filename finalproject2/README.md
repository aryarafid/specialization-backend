
# Final Project 2

Menggunakan JMeter dan Groovy Language untuk mendapatkan nilai-nilai tertentu, dari Poke API.


### Cara menjalankan test plan:

1. Jalankan aplikasi JMeter.
2. Di JMeter, ke menu atas File -> Open -> PokeAPITests1.jmx.
3. Jalankan masing-masing thread group dengan klik kanan judul thread group dan pilih Start.


### Penjelasan nomor 1

1. Mengatur default http request berisi URL pokemon species dan jumlah awal variabel-variabel offset dan limit.
2. Mengatur jumlah awal variabel offset 0 menggunakan BeanShell Sampler yang akan ditambahkan valuenya di loop.
3. Menggunakan While Controller untuk loop. Menentukan variabel isPokemonFound, selama itu false, loop akan terus berlaku dan variabel offset ditambah 20.
4. Membuat HTTP GET Request ke poke api dengan endpoint `/api/v2/pokemon-species?offset=${offset}&limit=20`.
5. Mengatur JSON Extractor untuk mengambil value name pikachu, disimpan di variabel `getPikachu`.
6. Di dalam JSR223 PostProcessor ditulis script Groovy untuk mengakses call HTTP ke Poke API. Apabila value `pikachu` ditemukan dengan mereferensi JSON path expression di `getPikachu`, disetor di variabel `pokemonName` dan URL-nya di `pokemonUrl`. Variabel `isPokemonFound` di-set True agar loop berhenti.
6. Di dalam If controller, jika URL `pokemonUrl` tidak kosong, URL tersebut di-call untuk mengekstrak URL evolution chain milik Pikachu.
7. Setelah mendapatkan URL evolution chain Pikachu, diekstrak evolusi berikutnya (Raichu) dengan JSON extractor.
\
[Link demo video soal no.1](https://github.com/aryarafid/specialization-backend/blob/main/finalproject2/videos/finalproject2-soal1.mp4)

\
Capture hasil:
![capture no. 1](https://github.com/aryarafid/specialization-backend/blob/main/finalproject2/images/fp2soal1.png)

### Penjelasan nomor 2

1. Mengatur default http request berisi URL pokemon shape di `/api/v2/pokemon-shape`.
2. Membuat HTTP request ke URL di atas.
3. Mengekstrak value semua shape Pokemon dan mengeluarkannya di log.
4. Mengatur JSON Extractor untuk mengekstrak URL shape Wings dari HTTP request di step 2.
5. Menggunakan JSR223 PostProcessor untuk me-log URL shape Wings.
6. Membuat HTTP request ke URL shape Wings.
7. Mengatur JSON Extractor untuk mengekstrak hanya nama-nama Pokemon yang memiliki sayap dari URL shape Wings.
8. Menggunakan JSR223 PostProcessor untuk membaca panggilan HTTP request dan me-log hasilnya.

\
[Link demo video soal no.2](https://github.com/aryarafid/specialization-backend/blob/main/finalproject2/videos/finalproject2-soal2.mp4)

Capture hasil:
![capture no. 2](https://github.com/aryarafid/specialization-backend/blob/main/finalproject2/images/fp2soal2.png)
