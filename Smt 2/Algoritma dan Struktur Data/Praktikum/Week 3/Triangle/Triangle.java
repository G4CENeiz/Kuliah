package Triangle;

public class Triangle {
    public int base;
    public int height;
    
    public Triangle(int a, int t) {
        this.base = a;
        this.height = t;
    }

    public void countArea() {
        double area = 0.5*this.base*this.height;
        System.out.print(area);
    }

    public void countPerimiter() {
        int perimiter = this.base*3;
        System.out.print(perimiter);
    }

    public static void main(String[] args) {
        Triangle[] triangleArray = new Triangle[4];

        triangleArray[0] = new Triangle(10, 4);
        triangleArray[1] = new Triangle(20, 10);
        triangleArray[2] = new Triangle(15, 6);
        triangleArray[3] = new Triangle(25, 10);

        for (int i = 0; i < triangleArray.length; i++) {
            System.out.printf("Triangle %d has an area of ", i + 1);
            triangleArray[i].countArea();
            System.out.print(" and a perimiter of ");
            triangleArray[i].countPerimiter();
            System.out.println();
        }
    }
}
