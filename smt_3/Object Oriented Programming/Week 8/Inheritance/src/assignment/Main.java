package assignment;

public class Main {
    public static void main(String[] args) {
        PC pc = new PC("Dell", 3_600, 16, "AMD Ryzen 5 3500x", 24);
        pc.showPC();
        System.out.println();
        Mac mac = new Mac("Apple", 3_200, 8, "M1", "udisclosed information", "XProtect");
        mac.showMac();
        System.out.println();
        Windows windows = new Windows("ROG Strix G15 G513RM", 3_200, 8, "AMD Ryzen 7 6800H", "56WHrs", "NVIDIA GeForce RTX 3060 Laptop GPU");
        windows.showWindows();
    }
}

class Computer {
    public String brand;
    public int coreClock;
    public int ramSize;
    public String processorName;

    public Computer() {
    }

    public Computer(String brand, int coreClock, int ramSize, String processorName) {
        this.brand = brand;
        this.coreClock = coreClock;
        this.ramSize = ramSize;
        this.processorName = processorName;
    }

    public void showData() {
        System.out.println(String.format("Brand         : %s", brand));
        System.out.println(String.format("Core Clock    : %,d Mhz", coreClock));
        System.out.println(String.format("RAM           : %d Gb", ramSize));
        System.out.println(String.format("Processor Name: %s", processorName));
    }
}

class PC extends Computer {
    public int monitorSize;
    
    public PC() {
    }
    
    public PC(String brand, int coreClock, int ramSize, String processorName, int monitorSize) {
        super(brand, coreClock, ramSize, processorName);
        this.monitorSize = monitorSize;
    }
    
    public void showPC() {
        super.showData();
        System.out.println(String.format("Monitor Size  : %d inch", monitorSize));
    }
}

class Laptop extends Computer {
    public String batteryType;
    
    public Laptop() {
    }
    
    public Laptop(String brand, int coreClock, int ramSize, String processorName, String batteryType) {
        super(brand, coreClock, ramSize, processorName);
        this.batteryType = batteryType;
    }
    
    public void showLaptop() {
        super.showData();
        System.out.println(String.format("Battery Type  : %s", batteryType));
    }
}

class Mac extends Laptop {
    public String security;
    
    public Mac() {
    }
    
    public Mac(String brand, int coreClock, int ramSize, String processorName, String batteryType, String security) {
        super(brand, coreClock, ramSize, processorName, batteryType);
        this.security = security;
    }
    
    public void showMac() {
        super.showLaptop();
        System.out.println(String.format("Security      : %s", security));
    }
}

class Windows extends Laptop {
    public String features;
    
    public Windows() {
    }
    
    public Windows(String brand, int coreClock, int ramSize, String processorName, String batteryType, String features) {
        super(brand, coreClock, ramSize, processorName, batteryType);
        this.features = features;
    }
    
    public void showWindows() {
        super.showLaptop();
        System.out.println(String.format("Features      : %s", features));
    }
}
