public class Assignment1 {
    static double income = 0;
    static void calculatePrice(String name, int laundry) {
        double pricePerkilo = 4_500;
        double discount = 1.00;
        if (laundry > 10) discount = 0.95;
        double cost = laundry * pricePerkilo * discount;
        income += cost; 
        System.out.printf("%s laundries cost: %.0f\n", name, cost);
    }
    public static void main(String[] args) {
        int[] customerLaundries = {4, 15, 6, 11};
        String[] customerName = {"Ani", "Budi", "Bina", "Cita"};
        for (int i = 0; i < customerLaundries.length; i++) {
            calculatePrice(customerName[i], customerLaundries[i]);
        }
        System.out.printf("Total income: %.0f\n", income);
    }
}
