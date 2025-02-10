import java.util.Scanner;

public class Question3 {
    public static void main(String[] args) {
        Scanner input = new Scanner(System.in);
        float DailyScore, MidExamScore, FinalExamScore, QuizScore;
        int FinalScore, num;

        System.out.print("Enter number of student: ");
        num = input.nextInt();

        for(int student = 1; student < num + 1; student++ ) {
            System.out.printf("Student %d Enter the daily score: ", student);
            DailyScore = input.nextFloat();
            System.out.printf("Student %d Enter the middle exam score: ", student);
            MidExamScore = input.nextFloat();
            System.out.printf("Student %d Enter the final exam score: ", student);
            FinalExamScore = input.nextFloat();
            System.out.printf("Student %d Enter the quiz score: ", student);
            QuizScore = input.nextFloat();

            FinalScore = (int) ((0.25f * DailyScore) + (0.3f * MidExamScore)    + (0.4f * FinalExamScore) + (0.05f * QuizScore));
            System.out.printf("The Final Score is %d\n", FinalScore);

            if (FinalScore >= 55 || FinalExamScore + MidExamScore / 2 == 100) {
                System.out.printf("Student %d PASS ", student);
                if (FinalScore < 70 && FinalExamScore > 65 && MidExamScore > 65 && DailyScore > 65 && QuizScore > 65) {
                    System.out.println("in Software Engineering major");
                    System.out.println("---------------------------------------------");
                } else if (FinalScore >= 70 && DailyScore > 70 && QuizScore > 70) {
                    System.out.println("in Multimedia major");
                    System.out.println("---------------------------------------------");
                } else {
                    System.out.println("in Information System major");
                    System.out.println("---------------------------------------------");
                }
            } else {
                System.out.printf("Student %d Fail\n", student);
                System.out.println("---------------------------------------------");
            }
        }
        input.close();
    }
}
