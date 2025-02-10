package classrelationship.experiment1;

public class MainExperiment1 {
    public static void main(String[] args) {
        Processor processor = new Processor("Intel i5", 3);
        Laptop laptop = new Laptop("Thinkpad", processor);

        laptop.info();

        Processor p1 = new Processor();
        p1.setBrand("Intel i5");
        p1.setCache(4);
        Laptop l1 = new Laptop();
        l1.setBrand("Thinkpad");
        l1.setProcessor(p1);
        l1.info();
    }
}
