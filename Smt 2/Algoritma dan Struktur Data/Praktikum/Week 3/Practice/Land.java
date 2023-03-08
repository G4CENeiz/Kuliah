package Practice;

public class Land {
    int length;
    int width;
    public Land(int l, int w) {
        this.length = l;
        this.width = w;
    }
    public int area() {
        return length * width;
    }
}