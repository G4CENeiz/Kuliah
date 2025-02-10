package Assignment;

import java.util.Scanner;

public class TestKoperasi{
    static Scanner input = new Scanner(System.in);
    static Anggota donny = new Anggota("111333444", "Donny", 5_000_000);
    public static void main(String[] args) {
        
        System.out.println("Nama Anggota: " + donny.getNama());
        System.out.println("Limit Pinjaman: " + donny.getLimitPinjaman());
        
        System.out.println("\nMeminjam uang 10.000.000...");
        donny.pinjam(10_000_000);
        System.out.println("Jumlah pinjaman saat ini: " + donny.getJumlahPinjaman());
        
        System.out.println("\nMeminjam uang 4.000.000...");
        donny.pinjam(4_000_000);
        System.out.println("Jumlah pinjaman saat ini: " + donny.getJumlahPinjaman());
        
        System.out.println("\nMembayar angsuran 1.000.000");
        donny.angsur(1_000_000);
        System.out.println("Jumlah pinjaman saat ini: " + donny.getJumlahPinjaman());

        System.out.println("\nMembayar angsuran 3.000.000");
        donny.angsur(3000000);
        System.out.println("Jumlah pinjaman saat ini: " + donny.getJumlahPinjaman());

        goToMenu();

        input.close();
    }

    public static void goToMenu() {
        System.out.println("Menu Transaksi Koperasi");
        System.out.println("1. Pinjam");
        System.out.println("2. Angsur");
        System.out.print("Menu: ");
        int menu = input.nextInt();
        switch (menu) {
            case 1:
                goToPinjam();
                break;
            
            case 2:
                goToAngsur();
                break;
        
            default:
                System.out.println("Tolong masukan nilai yang valid");
                goToMenu();
                break;
        }
    }

    public static void goToPinjam() {
        System.out.print("\nMasukkan jumlah yang ingin dipinjam : ");
        donny.pinjam(input.nextInt());
        System.out.println("Jumlah pinjaman saat ini: " + donny.getJumlahPinjaman());
        goToMenu();
    }

    public static void goToAngsur() {
        System.out.print("\nMasukkan jumlah yang ingin diangsur : ");
        donny.angsur(input.nextInt());
        System.out.println("Jumlah pinjaman saat ini: " + donny.getJumlahPinjaman());
        goToMenu();
    }
}
