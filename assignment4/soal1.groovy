import java.util.Scanner
Scanner scan = new Scanner(System.in)

try{
    print "Masukkan jumlah data = "
    int jumlah_angka = scan.nextInt()
    def array_ratarata = []

    for (int i=1; i<=jumlah_angka; i++){
        print("masukkan bilangan ke-"+i+"= ")
        array_ratarata.push(scan.nextInt())
    }

    double hasil = array_ratarata.sum()/array_ratarata.size()

    print ("Rata-rata = " + hasil)
} catch(Exception err) {
    println("Error: Masukkan harus berupa angka")
}
    