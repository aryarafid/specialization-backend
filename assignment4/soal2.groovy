print("Masukkan jumlah barang yang akan ditambahkan: ")
int jumlahData = Integer.parseInt(System.console().readLine())
def daftarBarang = []
double totalInventaris = 0

if (jumlahData>0) {
    try{
        for (int i = 1; i <= jumlahData; i++) {
            print("Masukkan ID barang ke-$i: ")
            String id = System.console().readLine()

            print("Masukkan nama barang: ")
            String nama = System.console().readLine()

            print("Masukkan harga barang: ")
            double harga = Double.parseDouble(System.console().readLine())

            print("Masukkan stok barang: ")
            int stok = Integer.parseInt(System.console().readLine())

            def barang = [
                    id: id,
                    nama: nama,
                    harga: harga,
                    stok: stok
            ]

            daftarBarang << barang
            totalInventaris += harga * stok
        }

        println "\nDaftar Barang:"
        for (barang in daftarBarang) {
            println "ID: $barang.id, Nama: $barang.nama, Harga: $barang.harga, Stok: $barang.stok"
            // print daftarBarang.getClass()
        }

        println "\nTotal Nilai Inventaris Toko: $totalInventaris"
    } catch(Exception err) {
        println("Error: Masukkan harga dan stok harus berupa angka")
    }

} else {
    print("Tidak ada barang yang diinput!")
}