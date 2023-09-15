package Assignment;

public class Peminjaman {
    public int id;
    public String namaMember;
    public String namaGame;
    public int harga;

    public void tampilData() {
        System.out.println("ID Transaksi: " + id);
        System.out.println("Nama Member : " + namaMember);
        System.out.println("Nama Game   : " + namaGame);
        System.out.println("Harga Game  : " + harga);
    }

    public int hargaBayar(int lamaSewa) {
        return lamaSewa * harga;
    }
}
