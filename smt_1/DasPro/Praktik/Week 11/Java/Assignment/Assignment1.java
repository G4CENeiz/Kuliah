import java.util.Scanner;

public class Assignment1 {
    public static void main(String[] args) {
        char[] CODE = {'A', 'B', 'D', 'E', 'F', 'G', 'H', 'L', 'N', 'T'};
        char[][] city = {
            {'B', 'A', 'N', 'T', 'E', 'N', ' ', ' ', ' ', ' '},
            {'J', 'A', 'K', 'A', 'R', 'T', 'A', ' ', ' ', ' '},
            {'B', 'A', 'N', 'D', 'U', 'N', 'G', ' ', ' ', ' '},
            {'C', 'I', 'R', 'E', 'B', 'O', 'N', ' ', ' ', ' '},
            {'B', 'O', 'G', 'O', 'R', ' ', ' ', ' ', ' ', ' '},
            {'P', 'E', 'K', 'A', 'L', 'O', 'N', 'G', 'A', 'N'},
            {'S', 'E', 'M', 'A', 'R', 'A', 'N', 'G', ' ', ' '},
            {'S', 'U', 'R', 'A', 'B', 'A', 'Y', 'A', ' ', ' '},
            {'M', 'A', 'L', 'A', 'N', 'G', ' ', ' ', ' ', ' '},
            {'T', 'E', 'G', 'A', 'L', ' ', ' ', ' ', ' ', ' '}
        };

        Scanner input = new Scanner(System.in);

        System.out.print("Enter license plate codes: ");
        char license = input.next().toUpperCase().charAt(0);

        for (int citySelector = 0; citySelector < CODE.length; citySelector++) {
            if (license == CODE[citySelector]) {
                System.out.printf(
                    "%s\t", 
                    CODE[citySelector]
                );
                for (int cityCharIterator = 0; cityCharIterator < city[citySelector].length; cityCharIterator++) {
                        System.out.printf(
                            "%s ", 
                            city[citySelector][cityCharIterator]
                        );
                }
                System.out.println("");
            }
        }
        input.close();
    }
}
