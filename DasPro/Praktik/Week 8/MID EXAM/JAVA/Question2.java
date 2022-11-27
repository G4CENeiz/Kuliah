import java.util.Scanner;

public class Question2 {
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

        if (FinalScore >= 55 || FinalExamScore + MidExamScore / 2 == 100) {
            System.out.print("PASS ");
            if (FinalScore < 70 && FinalExamScore > 65 && MidExamScore > 65 && DailyScore > 65 && QuizScore > 65) {
                System.out.println("in Software Engineering major");
            } else if (FinalScore >= 70 && DailyScore > 70 && QuizScore > 70) {
                System.out.println("in Multimedia major");
            } else {
                System.out.println("in Information System major");
            }
        } else {
            System.out.println("Fail");
        }
    }
}
