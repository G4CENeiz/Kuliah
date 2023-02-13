import java.util.Scanner;

public class FinalScore {
    public static void main(String[] args) {
        double MidtermExam, FinalExam, quiz, assignment, FinalScore;
        Scanner input = new Scanner(System.in);
        System.out.print("Midterm exam score\t: ");
        MidtermExam = input.nextDouble();
        System.out.print("Final exam score\t: ");
        FinalExam = input.nextDouble();
        System.out.print("Quiz score\t\t: ");
        quiz = input.nextDouble();
        System.out.print("Assignment score\t: ");
        assignment = input.nextDouble();
        FinalScore = (0.3 * MidtermExam) + (0.4 * FinalExam) + (0.1 * quiz) + (0.2 * assignment);
        System.out.println(String.format("Final score\t\t: %s",FinalScore));
        if (FinalScore < 65) {
            System.out.println("Exam remedial");
        } else {
            System.out.println("Pass");
        }
        input.close();
    }
}

