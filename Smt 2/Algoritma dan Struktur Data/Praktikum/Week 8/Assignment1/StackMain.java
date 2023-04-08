package Assignment1;

import java.util.Scanner;

public class StackMain {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);

        System.out.print("Insert Sentence: ");
        String sentence = sc.nextLine(); 

        Stack stk = new Stack(sentence.length());
        for (int i = 0; i < sentence.length(); i++) {
            stk.push(sentence.charAt(i));
        }
        stk.print();
        
        sc.close();
    }
}
