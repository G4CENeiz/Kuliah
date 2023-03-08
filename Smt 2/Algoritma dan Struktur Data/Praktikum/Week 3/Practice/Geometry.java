package Practice;

public class Geometry {
    int length;
    int width;
    int height;
    public Geometry(int l, int w, int h) {
        this.length = l;
        this.width = w;
        this.height = h;
    }
    public void calculateSurfaceArea() {
        int surfaceArea = 2*((length*width)+(width*height)+(height*length));
        System.out.print(surfaceArea);
    }
    public void calculateVolume() {
        int volume = length*width*height;
        System.out.print(volume);
    }
}
