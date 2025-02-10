public class function {
    static int n1=0,n2=1,n3=0; 
    static void printFibonacci(int count){    
        if(count>0){    
            n3 = n1 + n2;    
            n1 = n2;    
            n2 = n3;    
            System.out.print(" "+n3);   
            printFibonacci(count-1);    
        }    
    }
    public static void main(String[] args) {
        int secondPrev = 0, prev = 1, cur, limit = 9;
        System.out.printf("%s, %s", secondPrev, prev);
        for (int i = 2; i < limit; ++i) {
            cur = secondPrev + prev;
            System.out.printf(", %s", cur);
            secondPrev = prev;
            prev = cur;
        }
        int count=10;    
        System.out.print(n1+" "+n2);    
        printFibonacci(count-2);
    }
}