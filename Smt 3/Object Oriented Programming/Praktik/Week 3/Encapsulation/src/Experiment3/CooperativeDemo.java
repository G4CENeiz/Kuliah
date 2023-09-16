package Experiment3;

public class CooperativeDemo {
    public static void main(String[] args) {
        Member member1 = new Member();
        member1.setName("Iwan Setiawan");
        member1.setAddress("Jalan Sukarno Hatta no 10");
        member1.deposit(100_000);
        System.out.println("Balance " + member1.getName() + " : Rp " + member1.getBalance());
        
        member1.withdraw(5_000);
        System.out.println("Balance " + member1.getName() + " : Rp " + member1.getBalance());
    }
}
