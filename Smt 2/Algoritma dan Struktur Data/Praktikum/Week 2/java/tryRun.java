public class tryRun {
    public static void main(String[] args) {
        RentalTransaction retail = new RentalTransaction("123456789", "John Doe", "Minecraft", 2_500, 1);

        retail.print();

        System.out.println();

        Item benda = new Item("phone", 2_000_000, 4);
        System.out.printf("%,.2f", (double) benda.calculateFinalPrice());

        System.out.println();

        Lingkaran circle = new Lingkaran(754);
        System.out.printf("%,.2f", circle.hitungLuas());
    }
}
