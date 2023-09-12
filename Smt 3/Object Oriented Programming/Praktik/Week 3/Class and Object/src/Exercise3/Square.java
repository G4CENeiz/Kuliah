package Exercise3;

public class Square {
    public int side;
    
    public int calculateArea() {
        return side * side;
    }
    
    public int calculateCircumference() {
        return 4 * side;
    }
    
    public void displayData() {
        System.out.println("Side size           : " + side);
        System.out.println("Square Area         : " + calculateArea());
        System.out.println("Square Circumference: " + calculateCircumference());
    }
}
