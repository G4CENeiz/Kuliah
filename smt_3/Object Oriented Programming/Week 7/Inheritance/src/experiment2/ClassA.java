package experiment2;

public class ClassA {
    public int x;
    public int y;

    public void setX(int x) {
        this.x = x;
    }

    public void setY(int y) {
        this.y = y;
    }

    public void getValue() {
        System.out.println(String.format("Value of x: %d", x));
        System.out.println(String.format("Value of y: %d", y));
    }
}
