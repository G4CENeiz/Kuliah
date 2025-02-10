package polymorphism.experiment1;

public class Tester4 {
    public static void main(String[] args) {
        Owner ow = new Owner();
        ElectricityBill eBill = new ElectricityBill(5, "R-1");
        ow.pay(eBill);
        System.out.println("------------------------------");
        
        PermanentEmployee pEmp = new PermanentEmployee("Alpha", 420);
        ow.pay(pEmp);
        System.out.println("------------------------------");
        
        InternshipEmployee iEmp = new InternshipEmployee("Bravo", 6);
        ow.showMyEmployee(pEmp);
        System.out.println("------------------------------");
        ow.showMyEmployee(iEmp);
    }
}
