//EVEN CODE
//18_MUHAMMAD BAIHAQI AULIA ASY'ARI
import java.util.Scanner;

public class file{
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        float salary, FamilyMember, NetSalary;
        int NetSalaryInt;
        System.out.print("Employee's salary\t\t\t:");
        salary = sc.nextInt();
        System.out.print("Employee's number of family member\t:");
        FamilyMember = sc.nextInt();
        NetSalary = (salary-(FamilyMember*27000))*0.93f;
        NetSalaryInt = (int)NetSalary;
        System.out.println(String.format("Employee's net salary is Rp %s", NetSalaryInt));
        sc.close();
    }
}