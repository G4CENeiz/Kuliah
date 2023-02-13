import java.util.Scanner;

public class StudentsScore {
    final static Scanner input = new Scanner(System.in);

    public static void main(String[] args) {
        int studentsCount = getPositiveInteger("Insert the number of students: ",
                Integer.MAX_VALUE);
        String[] students = new String[studentsCount];
        for (int i = 0; i < students.length; i++) {
            String prompt = String.format("    Insert the name of the student %d: ", i + 1);
            String studentName = getUniqueString(prompt, students);
            students[i] = studentName;
        }

        int subjectsCount = getPositiveInteger("Insert the number of subjects: ",
                Integer.MAX_VALUE);
        String[] subjects = new String[subjectsCount];
        for (int i = 0; i < subjects.length; i++) {
            String prompt = String.format("    Insert the name of the subject %d: ", i + 1);
            String studentName = getUniqueString(prompt, subjects);
            subjects[i] = studentName;
        }

        int[][] scores = new int[studentsCount][subjectsCount];
        for (int row = 0; row < studentsCount; row++) {
            System.out.printf("Score for student %s\n", students[row]);
            for (int col = 0; col < subjectsCount; col++) {
                String prompt = String.format("    Score for subject %s: ", subjects[col]);
                scores[row][col] = getPositiveInteger(prompt, 100);
            }
        }

        // int studentsCount = 3;
        // int subjectsCount = 4;
        // String[] students = { "bagas", "haqi", "davis" };
        // String[] subjects = { "math", "english", "itc", "ctps" };
        // int[][] scores = { { 80, 60, 88, 90 }, { 60, 80, 70, 50 }, { 60, 80, 70, 50 }
        // };

        int[] studentSums = new int[studentsCount];
        int[] subjectSums = new int[subjectsCount];

        for (int row = 0; row < studentsCount; row++) {
            for (int col = 0; col < subjectsCount; col++) {
                studentSums[row] += scores[row][col];
            }
        }

        for (int col = 0; col < subjectsCount; col++) {
            for (int row = 0; row < studentsCount; row++) {
                subjectSums[col] += scores[row][col];
            }
        }

        int longestNameLength = 0;
        for (String studentName : students) {
            if (studentName.length() > longestNameLength) {
                longestNameLength = studentName.length();
            }
        }

        // used for the last row
        if (longestNameLength < "average".length()) {
            longestNameLength = "average".length();
        }

        System.out.println();
        System.out.printf("%" + (longestNameLength + 2) + "s", " ");

        for (int col = 0; col < subjectsCount; col++) {
            System.out.printf("%-" + (subjects[col].length() + 2) + "s", subjects[col]);
        }
        System.out.print("average");
        System.out.println();

        for (int row = 0; row < studentsCount; row++) {
            System.out.printf("%-" + (longestNameLength + 2) + "s", students[row]);
            for (int col = 0; col < subjectsCount; col++) {
                System.out.printf("%-" + (subjects[col].length() + 2) + "s", scores[row][col]);
            }
            System.out.printf("%-9s", studentSums[row] / subjectsCount);
            System.out.println();
        }

        System.out.println("-------------------------------------");

        System.out.printf("%-" + (longestNameLength + 2) + "s", "average");
        for (int i = 0; i < subjectsCount; i++) {
            System.out.printf("%-" + (subjects[i].length() + 2) + "s", subjectSums[i] / studentsCount);
        }
        System.out.println();
    }

    static int getPositiveInteger(String prompt, int limit) {
        while (true) {
            System.out.print(prompt);
            int userInput = input.nextInt();
            if (userInput > 0 || userInput < limit) {
                return userInput;
            }
            System.out.println(
                    "Please insert the value correctly. It can't be zero, negative, or more than the specified limit!");
        }
    }

    static String getUniqueString(String prompt, String[] list) {
        while (true) {
            System.out.printf(prompt);
            String userInput = input.next();
            if (!has(list, userInput)) {
                return userInput;
            }
            System.out.println("The value you inserted already exists. Please insert another one!");
        }
    }

    /// Checks if the array `list` has `item` inside it
    static boolean has(String[] stack, String needle) {
        for (String element : stack) {
            if (element == null)
                continue;
            if (element.equalsIgnoreCase(needle)) {
                return true;
            }
        }
        return false;
    }
}
