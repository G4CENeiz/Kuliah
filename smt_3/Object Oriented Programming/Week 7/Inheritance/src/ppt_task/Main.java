package ppt_task;

public class Main {
    public static void main(String[] args) {
        
    }
}

class TwoDimensionalGeometry {
    public float calculateArea() {
        return 0;
    }

    public float calculateCircumference() {
        return 0;
    }
}

class Rectangle extends TwoDimensionalGeometry {
    public float length;
    public float width;

    @Override
    public float calculateArea() {
        return length * width;
    }

    @Override
    public float calculateCircumference() {
        return 2 * (length + width);
    }
}

class Circle extends TwoDimensionalGeometry {
    public float r;

    @Override
    public float calculateArea() {
        return 3.14f * r * r;
    }

    @Override
    public float calculateCircumference() {
        return 2 * 3.14f * r;
    }
}

class Triangle extends TwoDimensionalGeometry {
    public float base;
    public float heigth;

    @Override
    public float calculateArea() {
        return 0.5f * base * heigth;
    }

    @Override
    public float calculateCircumference() {
        return 3 * base;
    }
}