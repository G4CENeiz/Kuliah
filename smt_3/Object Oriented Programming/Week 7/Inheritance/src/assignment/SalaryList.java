package assignment;

import java.util.ArrayList;
import java.util.List;
import java.util.Locale;

public class SalaryList {
    public List<Employee> employeeList;

    public SalaryList() {
        this.employeeList = new ArrayList<Employee>();
    }

    public void addEmployee(Employee employee) {
        this.employeeList.add(employee);
    }

    public void printSalaryList() {
        System.out.println("Employee salary list:");
        for (Employee employee : this.employeeList) {
            System.out.println(String.format(Locale.ITALY,"%s: Rp %,d", employee.getName(), employee.getSalary()));
        }
    }
}
