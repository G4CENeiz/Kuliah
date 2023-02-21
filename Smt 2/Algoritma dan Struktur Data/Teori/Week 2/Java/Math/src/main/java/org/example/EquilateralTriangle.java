package org.example;

public class EquilateralTriangle {
    double s;
    EquilateralTriangle() {

    }
    EquilateralTriangle(int side) {
        s = side;
    }

    double calcCircumference() {
        return s * 3;
    }

    double calcArea() {
        double area = 0;
        double h = Math.sqrt(Math.pow(s, 2)-Math.pow(s * 0.5, 2));
        area = s * h * 0.5;
        return area;
    }

    void print() {
        System.out.println("s = " + s + " Area = " + calcArea() + " Circ = " + calcCircumference());
    }
}
