package Practice;

import java.util.Scanner;

public class GeometryMain {
    public static void main(String[] args) {
        Scanner input = new Scanner(System.in);
        System.out.print("Enter the length of the Array: ");
        int limit = input.nextInt();

        Geometry[] geometries = new Geometry[limit];
        for (int i = 0; i < geometries.length; i++) {
            System.out.print("Enter Block " + (i+1) + " length: ");
            int l = input.nextInt();
            System.out.print("Enter Block " + (i+1) + " width: ");
            int w = input.nextInt();
            System.out.print("Enter Block " + (i+1) + " height: ");
            int h = input.nextInt();
            geometries[i] = new Geometry(l, w, h);
        }
        for (int i = 0; i < geometries.length; i++) {
            System.out.printf("The surface area of block %d is ", i+1);
            geometries[i].calculateSurfaceArea();
            System.out.print(" and volume of ");
            geometries[i].calculateVolume();
            System.out.println();
        }
        input.close();
    }
}
