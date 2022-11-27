import java.util.Scanner;

public class Question3Refined {
    public static void main(String[] args) {
        final float dailyScoreRatio     = 0.25f;
        final float midExamScoreRatio   = 0.3f;
        final float finalExamScoreRatio = 0.4f;
        final float quizScoreRatio      = 0.05f;
        final int   passingFinalScore   = 55;
        final int   passingExamScore    = 100;
        final int   SE_Final_Score      = 70;
        final int   SE_All_Scores       = 65;
        final int   MM_Final_Score      = 70;
        final int   MM_All_Score        = 70;

        Scanner input = new Scanner(System.in);
        System.out.print("Enter number of student: ");
        int student = input.nextInt();
        System.out.println();

        for(int i = 0; i < student; i++ ) {
            System.out.printf("Student %d Enter the daily score\t\t: ", i + 1);
            int dailyScore = input.nextInt();
            System.out.printf("Student %d Enter the middle exam score\t: ", i + 1);
            int midExamScore = input.nextInt();
            System.out.printf("Student %d Enter the final exam score\t: ", i + 1);
            int finalExamScore = input.nextInt();
            System.out.printf("Student %d Enter the quiz score\t\t: ", i + 1);
            int quizScore = input.nextInt();

            float finalScore = (dailyScoreRatio * dailyScore + 
                midExamScoreRatio * midExamScore + 
                finalExamScoreRatio * finalExamScore + 
                quizScoreRatio * quizScore);
            System.out.printf("\nThe Final Score is %.2f\n", finalScore);

            if (finalScore >= passingFinalScore 
                    || (finalExamScore == passingExamScore 
                    && midExamScore == passingExamScore)) {
                System.out.printf("\nStudent %d PASS ", i + 1);
                
                if (finalScore < SE_Final_Score 
                        && finalExamScore > SE_Final_Score 
                        && midExamScore > SE_All_Scores 
                        && dailyScore > SE_All_Scores 
                        && quizScore > SE_All_Scores) {
                    System.out.println("in Software Engineering major");
                } 
                else if (finalScore >= MM_Final_Score 
                        && dailyScore > MM_All_Score 
                        && quizScore > MM_All_Score) {
                    System.out.println("in Multimedia major");
                } 
                else {
                    System.out.println("in Information System major");
                }
            } 
            else {
                System.out.printf("\nStudent %d Fail\n", i + 1);
            }
            System.out.println("------------------------------------------------");
        }
        input.close();
    }
}
