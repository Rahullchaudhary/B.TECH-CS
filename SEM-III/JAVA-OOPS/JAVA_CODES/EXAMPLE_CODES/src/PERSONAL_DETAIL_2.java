/*AN APPLICATION TO DEMONSTRATE USE OF SCANNER CLASS CRAETE AN APPLICATION
  TO ACCEPT FIRSTNAME, ROLLNUMBER,PERCENTAGE,SECTION,YEAR,COURSE FROM USER.
  AND DISPLAY THE OUTPUT IN THE BELOW FORMAT.
  OUTPUT FORMAT ->
  FIRST NAME : NIKHIL
  ROLL NO. : 31
  PERCENTAGE : 80
  SECTION : C
  COURSE YEAR : 2
  COURSE : B.TECH-CSE */

import java.util.Scanner;
public class PERSONAL_DETAIL_2 {
    public static void main(String[] args){
        Scanner object = new Scanner(System.in);
        System.out.println("Enter your name");
        String FirstName = object.next();
        System.out.println("Enter your Rollno.");
        int RollNo = object.nextInt();
        System.out.println("Enter your Percentage");
        double Percentage = object.nextDouble();
        System.out.println("Enter your section");
        String Section = object.next();
        System.out.println("Enter your course year");
        int Year = object.nextInt();
        object.nextLine();
        System.out.println("Enter your course");
        String Course = object.nextLine();
        // output
        System.out.println("FIRST NAME : " + FirstName);
        System.out.println("ROLL NO. :" + RollNo);
        System.out.println("PERCENTAGE : " + Percentage);
        System.out.println("SECTION : " + Section);
        System.out.println("COURSE YEAR : " + Year);
        System.out.println("COURSE : " + Course);
    }
}
