package classrelationship.experiment1;

public class Laptop {
    private String brand;
    private Processor processor;

    public Laptop() {
    }

    public Laptop(String brand, Processor processor) {
        this.brand = brand;
        this.processor = processor;
    }

    public void setBrand(String brand) {
        this.brand = brand;
    }

    public void setProcessor(Processor processor) {
        this.processor = processor;
    }

    public void info() {
        System.out.println("Merk Laptop = " + brand);
        processor.info();
    }
}
