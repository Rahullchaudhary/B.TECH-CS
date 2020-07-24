/* Practice Example 2: Eligibility Criteria Test Using Nested If
   Practice example 2: Nested if () -->
   Criteria to play football at an academy is that age should be greater than 16 and height should be greater than 167 cm.
   Write a program which does the following -:
   1. Accept the user's age.
   2. Accept user’s height in cm.
   3. If age is greater than 16 and height is greater than 167, display a message “You are qualified to play”.
   4. If age is greater than 16 but height is <167, display a message that “You are not qualified to play”
   5. If age is less than 16 and height is >167 or<167 then display a message that says “You are not qualified as of now, come back after X years” Where X is the difference between 16 and user’s current age.
*/

import java.util.Scanner;

public class EligibiltyCriteria {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        int age;
        int x;
        double height;
        System.out.println("PLEASE ENTER YOUR AGE : ");
        age = sc.nextInt();
        x = 16 - age;
        System.out.println("PLEASE ENTER YOUR HEIGHT(CM) : ");
        height = sc.nextDouble();
        if (age > 16 ) {
            if (height > 167) {
                System.out.println("YOU ARE QUALIFIED TO PLAY !");
            } else {
                System.out.println("YOU ARE NOT QUALIFIED !");
            }
        }
        else{
            System.out.println("YOU ARE NOT QUALIFIED AS OF NOW, COME BACK AFTER " + x + " YEARS !");
        }
        sc.close();
    }
}
