package Assignment;

import java.util.Scanner;

public class VoteMain {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        System.out.print("Input the number of candidate: ");
        int candidateAmount = sc.nextInt();
        String[] candidate = new String[candidateAmount];

        for (int i = 0; i < candidateAmount; i++) {
            System.out.printf("Enter name of the #%d candidate: ", i+1);
            candidate[i] = sc.nextLine();
        }

        System.out.println("List of candidate voting number: ");

        for (int i = 0; i < candidate.length; i++) {
            System.out.printf("%d. %s\n", i+1, candidate[i]);
        }

        int[][] votes = new int[candidateAmount][candidateAmount];

        for (int i = 0; i < candidateAmount; i++) {
            System.out.printf("Cast vote fot candidate %s: ", candidate[i]);
            int vote = sc.nextInt();
            votes[vote-1][i] = 1;
        }

        Vote vote = new Vote(candidate);

        vote.display();

        sc.close();
    }
}
