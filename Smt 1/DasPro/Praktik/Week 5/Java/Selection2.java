import java.util.Scanner;

public class Selection2 {
    public static void main(String[] args) {
        Scanner input = new Scanner(System.in);
        int score1, score2, FinalScore;
        System.out.print("Enter a score 1: ");
        score1 = input.nextInt();
        System.out.print("Enter a score 2: ");
        score2 = input.nextInt();
        FinalScore = (score1 + score2) / 2;
        if (FinalScore >= 100) {
            FinalScore -= 5;
        }
        System.out.println("The final score is " + FinalScore);
        input.close();
    }
}

