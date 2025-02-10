package polymorphism.experiment1;

public class Tester3 {
    public static void main(String[] args) {
        PermanentEmployee pEmp = new PermanentEmployee("Alpha", 420);
        InternshipEmployee iEmp = new InternshipEmployee("Bravo", 6);
        ElectricityBill eBill = new ElectricityBill(5, "A-1");
        Employee[] e = {pEmp, iEmp};
        Payable[] p = {pEmp, eBill};
        // Employee[] e2 = {pEmp, iEmp, eBill};

        System.out.println(e);
        System.out.println(p);
    }
}
