package Practicum2;

public class Book {
    String title, authorName;
    int publishedYear, pageAmount, price;

    public Book(String tt, String nm, int yr, int pam, int pr) {
        this.title = tt;
        this.authorName = nm;
        this.publishedYear = yr;
        this.pageAmount = pam;
        this.price = pr;
    }
}