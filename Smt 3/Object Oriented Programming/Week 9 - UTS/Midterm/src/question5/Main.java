package question5;

public class Main {
    public static void main(String[] args) {
        Writer writer = new Writer();
        writer.setName("Alpha");
        writer.setAddress("Home");

        Book book = new Book();
        book.setWriter(writer);
        book.setISBN("RandomStrings");
        book.setTitle("How to be Alpha");
        book.setPrice(5_000_000);

        System.out.println(book.getWriter().getName());
        System.out.println(book.getWriter().getAddress());
        System.out.println(book.getTitle());
        System.out.println(book.getISBN());
        System.out.println(book.getPrice());
    }
}

class Writer {
    private String name;
    private String address;

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }
}

class Book {
    private String ISBN;
    private String title;
    private Writer writer;
    private int price;

    public String getISBN() {
        return ISBN;
    }

    public void setISBN(String iSBN) {
        ISBN = iSBN;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public int getPrice() {
        return price;
    }

    public void setPrice(int price) {
        this.price = price;
    }

    public Writer getWriter() {
        return writer;
    }

    public void setWriter(Writer writer) {
        this.writer = writer;
    }
}
