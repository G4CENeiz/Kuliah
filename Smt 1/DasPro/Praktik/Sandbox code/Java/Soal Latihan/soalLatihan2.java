import java.util.Scanner;

public class soalLatihan2 {
    public static void main(String[] args) {
        Scanner input = new Scanner(System.in);

        System.out.print("Enter the amount of student: ");
        int studentCount = input.nextInt();

        String[] studentName = new String[studentCount];
        for (int studentID = 0; studentID < studentCount; studentID++) {
            System.out.printf("Enter the name of student %d: ", studentID);
            studentName[studentID] = input.next();
        }
        
        System.out.print("Enter the amount of subject: ");
        int subjectCount = input.nextInt();

        String[] subjectName  = new String[subjectCount];
        for (int subjectID = 0; subjectID < subjectCount; subjectID++) {
            System.out.printf("Enter the name of subject %d: ", subjectID);
            subjectName[subjectID] = input.next();
        }

        int[][] score = new int[studentCount][subjectCount];
        for (int studentID = 0; studentID < studentCount; studentID++) {
            System.out.printf("Enter score for student %s\n", studentName[studentID]);
            for (int subjectID = 0; subjectID < subjectCount; subjectID++) {
                System.out.printf("Enter Score for subject %s: ", subjectName[subjectID]);
                score[studentID][subjectID] += input.nextInt();
            }
        }

        int[] studentSum = new int[studentCount];
        int[] subjectSum = new int[subjectCount];

        for (int studentID = 0; studentID < studentCount; studentID++) {
            for (int subjectID = 0; subjectID < subjectCount; subjectID++) {
                studentSum[studentID] += score[studentID][subjectID];
                subjectSum[subjectID] += score[studentID][subjectID];
            }
        }

        for (int studentID = 0; studentID < studentCount; studentID++) {
            System.out.printf("%s score average is %d\n", studentName[studentID], studentSum[studentID]/subjectCount);
        }
        for (int subjectID = 0; subjectID < subjectCount; subjectID++) {
            System.out.printf("%s score average is %d\n", subjectName[subjectID],subjectSum[subjectID]/subjectCount);
        }
        input.close();
    }
}
