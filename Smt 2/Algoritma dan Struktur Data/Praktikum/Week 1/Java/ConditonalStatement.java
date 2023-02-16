import java.util.Scanner;

public class ConditonalStatement {
    final static Scanner input = new Scanner(System.in);
    static double AssignmentPercentage = 0.2;
    static double MidtermPercentage = 0.35;
    static double finalExamPercentage = 0.45;
    public static void main(String[] args) {
        System.out.println("Program Menghitung Nilai Akhir");
        bar();
        int assignmentScore =   PromptInput("assignment");
        int midtermScore    =   PromptInput("midterm");
        int finalExamScore  =   PromptInput("finals exam");
        bar();
        double finalScore = (assignmentScore * AssignmentPercentage) + (midtermScore * MidtermPercentage) + (finalExamScore * finalExamPercentage);
        String scorePredicate = scorePredicate(finalScore);
        String status = (finalExamScore > 50) ? "Passed" : "Failed"; 
        bar();
        System.out.printf("Final score  : %.1f\n", finalScore);
        System.out.printf("Predicate    : %s\n", scorePredicate);
        bar();
        System.out.println(status);
    }
    static void bar() {
        System.out.println("================================");
    }
    static int PromptInput(String prompt) {
        System.out.printf("Enter %-12s score: ",prompt);
        int userInput = input.nextInt();
        input.nextLine();
        return userInput;
    }
    static String scorePredicate(double finalScore) {
        if (finalScore > 80) {
            return "A";
        } else if (finalScore > 73) {
            return "B+";
        } else if (finalScore > 65) {
            return "B";
        } else if (finalScore > 60) {
            return "C+";
        } else if (finalScore > 50) {
            return "C";
        } else if (finalScore > 39) {
            return "D";
        } else {
            return "E";
        }
    }
}