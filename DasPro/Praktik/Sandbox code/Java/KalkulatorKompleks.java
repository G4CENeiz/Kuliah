import java.util.Scanner;

public class KalkulatorKompleks {
    public static void main(String[] args) {
        Scanner input = new Scanner(System.in);
        String op, hasil, hasilakhir;
        int n, var;
        double x, y, z;
        var = 1;
        hasilakhir = "";
        hasil = "";

        n = input.nextInt();
        input.nextLine();
        while(var<=n) {
            op = input.next();
            x = input.nextDouble();
            y = input.nextDouble();
            if(op.equalsIgnoreCase("tambah")){
                z = x + y;
                hasil = String.format("%.0f", x) + " + " + String.format("%.0f", y) + " = " + String.format("%.2f", z) + "\n";
            } else if(op.equalsIgnoreCase("kurang")){
                z = x - y;
                hasil = String.format("%.0f", x) + " - " + String.format("%.0f", y) + " = " + String.format("%.2f", z) + "\n";
            } else if(op.equalsIgnoreCase("kali")){
                z = x * y;
                hasil = String.format("%.0f", x) + " * " + String.format("%.0f", y) + " = " + String.format("%.2f", z) + "\n";
            } else if(op.equalsIgnoreCase("bagi")){
                z = x / y;
                hasil =  String.format("%.0f", x) + " / " + String.format("%.0f", y) + " = " + String.format("%.2f", z) + "\n";
            } else if (op.equalsIgnoreCase("mod")) {
                z = x % y;
                hasil = String.format("%.0f", x) + " % " + String.format("%.0f", y) + " = " + String.format("%.2f", z) + "\n";
            }
            hasilakhir = hasilakhir + hasil;
            var++;

        }
        input.close();
        System.out.println(hasilakhir);


    }
}
