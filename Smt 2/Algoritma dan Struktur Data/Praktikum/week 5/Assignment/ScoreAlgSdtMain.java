package Assignment;

import java.util.Scanner;

public class ScoreAlgSdtMain {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);

        System.out.print("Enter amount of student: ");
        int amount = sc.nextInt();
        ScoreAlgSdt[] scores = new ScoreAlgSdt[amount];

        for (int i = 0; i < scores.length; i++) {
            System.out.print("");
            String name = sc.nextLine();
            System.out.print("");
            int scoreAssgnment = sc.nextInt();
            System.out.print("");
            int scoreQuiz = sc.nextInt();
            System.out.print("");
            int scoreMid = sc.nextInt();
            System.out.print("");
            int scoreFinal = sc.nextInt();
            scores[i] = new ScoreAlgSdt(name, scoreAssgnment, scoreQuiz, scoreMid, scoreFinal);
        }
        
        double totalScore = 0; 
        for (int i = 0; i < scores.length; i++) {
            totalScore += scores[i].calculateTotalScore();
        }
        double avgScore = totalScore/amount;

        int row =  amount + 2;
        String[] nameColumn = new String[row];
        String[] valueColumn = new String[row];

        nameColumn[0] = "Name";
        nameColumn[row-1] = "Average";
        valueColumn[0] = "Total Value of Algorithm Courses";
        valueColumn[row-1] = String.format("%,.2f", avgScore);

        for (int i = 1; i < row-1; i++) {
            nameColumn[i] = scores[i-1].nameSdt;
            valueColumn[i] = String.format("%,.2f", scores[i-1].calculateTotalScore());
        }

        System.out.println("There are a total of the following student grades");
        System.out.println("================================================================");
        for (int i = 0; i < row; i++) {
            System.out.printf("|%s|", nameColumn[i]);
            System.out.printf("|%s|", valueColumn[i]);
        }
        System.out.println("================================================================");
        System.out.printf("Then the average total value of all students who have taken the algorithm course is %,.2f", avgScore);

        sc.close();
    }
}
