package codes.ArrayOfObjects.src.main.java.ArrayBlock;

public class Blocks {
    public int width, length, height;

    public Blocks(int p, int l, int t) {
        length = p;
        width = l;
        height = t;
    }

    public int countVolume() {
        return length * width * height;
    }
}
