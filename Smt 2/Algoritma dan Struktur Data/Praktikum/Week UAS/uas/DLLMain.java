/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */


/**
 *
 * @author Imam`
 */
public class DLLMain {
    public static void main(String[] args) {
        DLL dll = new DLL();
        dll.addLast(10);
        dll.addLast(100);
        dll.addLast(34);
        dll.addLast(20);
        dll.addLast(200);
        dll.addLast(75);
        System.out.println("Tampilan data awal DLL:");
        dll.print();

        //cek fungsi toArray()
        int[] arr = dll.toArray();
        System.out.println("Tampilan data array hasil dari fungsi toArray():");
        for(int x : arr){
            System.out.print(""+x+", ");
        }
        System.out.println();
        
        //cek fungsi sublist()
        DLL subList = dll.sublist(1, 3);
        System.out.println("Tampilan data dari list hasil dari fungsi sublist(1,3):");
        subList.print();
        
        //cek fungsi addAll()
        DLL dll2 = new DLL();
        dll2.addLast(212);
        dll2.addLast(212);
        dll2.addLast(212);
        dll.addAll(dll2);
        System.out.println("Tampilan data dari list hasil dari fungsi addAll(): ");
        dll.print();
        
        //cek fungsi containAll
        DLL dll3 = new DLL();
        dll3.addLast(100);
        dll3.addLast(34);
        dll3.addLast(212);
        System.out.println("Tampilan data dari fungsi containsAll(): ");
        System.out.println(""+dll.containsAll(dll3));
        
        //cek fungsi removeAll()
        dll.removeAll(dll3);
        System.out.println("Tampilan data dari fungsi removeAll():");
        dll.print();
    }
}
