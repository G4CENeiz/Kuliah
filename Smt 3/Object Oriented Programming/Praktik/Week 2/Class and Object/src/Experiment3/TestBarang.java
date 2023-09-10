package Experiment3;

public class TestBarang {
    public static void main(String[] args) {
        Barang brg1 = new Barang();
        brg1.namaBrg = "Pensil";
        brg1.jenisBrg = "ATK";
        brg1.stok = 10;
        brg1.tampilBarang();

        System.out.println("Stok baru adalah " + brg1.tambahStok(20));
    }
}
