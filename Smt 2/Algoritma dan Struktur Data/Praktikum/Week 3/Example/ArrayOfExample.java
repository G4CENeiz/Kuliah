package Example;

public class ArrayOfExample {
    public static void main(String[] args) {
        int length = 3, width = 3;
        Example[][] exampleArray = new Example[length][width];
        for (int arrayLength = 0; arrayLength < length; arrayLength++) {
            for (int arrayWidth = 0; arrayWidth < width; arrayWidth++) {
                exampleArray[arrayLength][arrayWidth] = new Example();
                exampleArray[arrayLength][arrayWidth].x = arrayLength;
                exampleArray[arrayLength][arrayWidth].y = arrayWidth;
            }

        }

    }
}
