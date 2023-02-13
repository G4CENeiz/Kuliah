import java.util.Scanner;

public class Assignment2 {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        float temperature, celcius, reamur, fahrenheit, kelvin;
        System.out.print("Insert temperature\t: ");
        temperature = sc.nextInt();
        sc.close();
        celcius = temperature;
        reamur = 4 * celcius / 5;
        fahrenheit = (9 * celcius / 5) + 32;
        kelvin = celcius + 273;
        System.out.println(String.format("Celcius\t\t\t: %sC \nReamur\t\t\t: %sR \nFahrenheit\t\t: %sF \nKelvin\t\t\t: %sK", celcius, reamur, fahrenheit, kelvin));
    }
}