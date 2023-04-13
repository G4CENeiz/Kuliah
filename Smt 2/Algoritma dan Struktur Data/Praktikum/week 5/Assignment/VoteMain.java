package Assignment;

import java.util.Scanner;

public class VoteMain {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        Vote[] vote = new Vote[8];

        for (int i = 0; i < vote.length; i++) {
            System.out.printf("Enter the name of voter #%d: ", i+1);
            vote[i].name = sc.nextLine();
        }

        sc.close();
    }
}
