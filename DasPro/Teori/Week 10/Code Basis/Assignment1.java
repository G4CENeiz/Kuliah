

public class Assignment1 {
    public static void main(String[] args) {
        int [] filling;
        filling = new int [50];
        System.out.printf("%s%9s\n", "index", "Value");
        for (int i = 0; i < filling.length; i++) {
            System.out.printf("%2d%9d\n", i, filling[i]);
        }
    }
}
