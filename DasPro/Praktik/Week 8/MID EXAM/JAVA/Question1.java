import java.util.Scanner;

public class Question1 {
    public static void main(String[] args) {
        Scanner input = new Scanner(System.in);
        float DailyScore, MidExamScore, FinalExamScore, QuizScore;
        int FinalScore;
        System.out.print("Enter the daily score: ");
        DailyScore = input.nextFloat();
        System.out.print("Enter the middle exam score: ");
        MidExamScore = input.nextFloat();
        System.out.print("Enter the final exam score: ");
        FinalExamScore = input.nextFloat();
        System.out.print("Enter the quiz score: ");
        QuizScore = input.nextFloat();
        input.close();
        FinalScore = (int) ((0.25f * DailyScore) + (0.3f * MidExamScore) + (0.4f * FinalExamScore) + (0.05f * QuizScore));
        System.out.printf("The Final Score is %d\n", FinalScore);
    }
}
