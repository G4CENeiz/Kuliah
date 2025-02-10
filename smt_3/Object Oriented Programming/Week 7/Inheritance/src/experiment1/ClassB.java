package experiment1;

public class ClassB extends ClassA {
    public int z;

    public void getZValue() {
        System.out.println(String.format("Value of Z: %d", z));
    }

    public void getSum() {
        System.out.println(String.format("Sum: %d", (x+y+z)));
    }
}
