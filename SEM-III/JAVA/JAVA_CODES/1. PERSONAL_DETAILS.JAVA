/*APPLICATION TO DEMOSCANNER CLASS CREATE AN APPLICATION TO ACCEPT NAME, AGE,
  4-DIGIT CODE,CPI,MOBILE NO.,PASSED AND DISPLAY THESE VALUES
  TO USER IN THE GIVEN FORMATE ->
  Name : Nikhil
  Age  : 19
  4- Digit Code : 1122
  CPI : 8.0
  Mobile No. : 8756691439
  Passed : true */


import java.util.Scanner;
public class DemoScanner {
    public static void main(String[] args){
        Scanner object = new Scanner(System.in);
        System.out.println("Enter Your Full NAME");
        // declaring a String object to store full Name
        String Name = object.nextLine();
        System.out.println("Enter Your Age");
        byte Age = object.nextByte();
        System.out.println("Enter 4 digit Code");
        short code = object.nextShort();
        System.out.println("Enter Your CPI");
        double CPI = object.nextDouble();
        System.out.println("Enter your Mobile No.");
        long MobileNo = object.nextLong();
        System.out.println("Enter Your Exam Status true for pass /false for fail");
        boolean Passed = object.nextBoolean();
        // output
        System.out.println("Name : " + Name);
        System.out.println("Age : " + Age);
        System.out.println("4-Digit Code : " + code);
        System.out.println("CPI : " + CPI);
        System.out.println("Mobile No : " + MobileNo);
        System.out.println("Passed : " + Passed);
    }
}
