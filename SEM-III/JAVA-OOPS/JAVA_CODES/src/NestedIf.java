/* EXAMPLE OF NESTED IF */

import java.util.Scanner;
public class NestedIf {
    public static void main(String[] args){
        int age;
        double percentage;
        Scanner sc = new Scanner(System.in);
        System.out.println("ENTER YOUR AGE : ");
        age = sc.nextInt();
        System.out.println("ENTER YOUR PERCENTAGE : ");
        percentage = sc.nextDouble();
        if (age >= 18)
        {
            if (percentage > 75)
            {
                System.out.println("AGE AND PERCENTAGE MEET OUR CRITERIA !");
            }
            else
            {
                System.out.println("YOU ARE ABOVVE 18 BUT YOUR PERCENTAGE < 75 !");
            }
        }
        else
        {
            System.out.println("YOU AGE IS LESS THAN 18 !");
        }

        sc.close();
    }
}
