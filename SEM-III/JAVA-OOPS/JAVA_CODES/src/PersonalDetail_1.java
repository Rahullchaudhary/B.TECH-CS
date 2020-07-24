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
public class PersonalDetail_1 {
    public static void main(String[] args){
        Scanner object = new Scanner(System.in);
        System.out.println("Enter Your Full NAME");
        // declaring a String object to store full Name
        String name = object.nextLine();
        System.out.println("Enter Your Age");
        byte age = object.nextByte();
        System.out.println("Enter 4 digit Code");
        short code = object.nextShort();
        System.out.println("Enter Your CPI");
        double cpi = object.nextDouble();
        System.out.println("Enter your Mobile No.");
        long mobileNo = object.nextLong();
        System.out.println("Enter Your Exam Status true for pass /false for fail");
        boolean passed = object.nextBoolean();
        // output
        System.out.println("Name : " + name);
        System.out.println("Age : " + age);
        System.out.println("4-Digit Code : " + code);
        System.out.println("CPI : " + cpi);
        System.out.println("Mobile No : " + mobileNo);
        System.out.println("Passed : " + passed);
        object.close();
    }
}
