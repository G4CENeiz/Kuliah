package Practicum2;

import java.util.Scanner;

public class StackMain {
    public static void main(String[] args) {
        Stack st = new Stack(8);
        Scanner sc = new Scanner(System.in);

        char choose;
        do {
            System.out.print("Title : ");
            String title = sc.nextLine();
            
            System.out.print("Author Name : ");
            String name = sc.nextLine();

            System.out.print("Published year : ");
            int year = sc.nextInt();

            System.out.print("Pages Amount : ");
            int pages = sc.nextInt();

            System.out.print("Price : ");
            int price = sc.nextInt();

            Book bk = new Book(title, name, year, pages, price);
            System.out.print("Do you want to add new data to Stack (y/n)? ");
            choose = sc.next().charAt(0);
            sc.nextLine();
            st.push(bk);

        } while (choose == 'y');

        st.print();
        st.pop();
        st.peek();
        st.print();

        sc.close();
    }
}
