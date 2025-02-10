import java.util.Scanner;

public class halo {
    public static void main(String[] args) {
        Scanner input = new Scanner(System.in);
        String[] array = {"volvo", "halo"};
        int[] array1  = {1, 2, 3};

        for (int i = 0; i < 3; i++) {
            System.out.println(array1[i]);
        }
        
        for (int i = 0; i < array1.length; i++) {
            array1[i] = 2;
        }

        for (int i = 0; i < 3; i++) {
            System.out.println(array1[i]);
        }

        menu();
    }

    public static void menu() {
        System.out.println("pilih salah satu");
        System.out.println("1. hai");
        System.out.println("2. halo");
    }
}