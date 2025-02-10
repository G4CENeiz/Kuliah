public class Arr1 {
    public static void main(String[] args) {
        int[][] number = new int[2][3];

        number[0][0] = 12;
        number[0][1] = 14;
        number[0][2] = 34;
        number[1][0] = 20;
        number[1][1] = 24;
        number[1][2] = 67;

        System.out.println(number[0][0] + " " + number[0][1] + " " + number[0][2]);
        System.out.println(number[1][0] + " " + number[1][1] + " " + number[1][2]);
    }
}
