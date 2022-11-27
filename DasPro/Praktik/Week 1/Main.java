public class Main {
    public static void main(String[] args) {
        System.out.println("Hello World");
        // this is a single line comment
        System.out.println("Continued");
        /* this is a multi line comment
         * as you can see
         * it works fine like this
         */
        int myInterger;         //
        String myString;        //
        float myFloat;          //
        boolean myBoolean;      //
        char myLetter;          //

        myString        =   "Jonh Doe"; //this is a string variable
        myInterger      =   21;         //this is an interger variable
        myFloat         =   3.1415f;    //
        myBoolean       =   true;       //
        myLetter        =   'D';        //

        System.out.println(myString);     //this print out the string
        System.out.println(myInterger);   //this print out the interger

        String First, Last, Full;

        First   =   "John";
        Last    =   "Doe";
        Full    =   First + " " + Last;

        System.out.println(Full);

        System.out.println(myFloat);
        System.out.println(myBoolean);
        System.out.println(myLetter);

    }
}
