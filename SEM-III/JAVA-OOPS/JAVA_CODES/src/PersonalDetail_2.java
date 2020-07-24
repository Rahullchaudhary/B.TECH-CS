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
public class PersonalDetail_2 {
    public static void main(String[] args){
        Scanner object = new Scanner(System.in);
        System.out.println("Enter your name");
        String firstname = object.next();
        System.out.println("Enter your Rollno.");
        int rollno = object.nextInt();
        System.out.println("Enter your Percentage");
        double percentage = object.nextDouble();
        System.out.println("Enter your section");
        String section = object.next();
        System.out.println("Enter your course year");
        int year = object.nextInt();
        object.nextLine();
        System.out.println("Enter your course");
        String course = object.nextLine();
        // output
        System.out.println("FIRST NAME : " + firstname);
        System.out.println("ROLL NO. :" + rollno);
        System.out.println("PERCENTAGE : " + percentage);
        System.out.println("SECTION : " + section);
        System.out.println("COURSE YEAR : " + year);
        System.out.println("COURSE : " + course);
        object.close();
    }
}
