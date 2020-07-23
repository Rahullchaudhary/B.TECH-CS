/* EXAMPLE OF NESTED IF */

import java.util.Scanner;
public class NESTED_IF {
    public static void main(String[] args){
        int AGE;
        double PERCENTAGE;
        Scanner OBJECT = new Scanner(System.in);
        System.out.println("ENTER YOUR AGE : ");
        AGE = OBJECT.nextInt();
        System.out.println("ENTER YOUR PERCENTAGE : ");
        PERCENTAGE = OBJECT.nextDouble();
        if (AGE >= 18)
        {
            if (PERCENTAGE > 75)
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

        OBJECT.close();
    }
}
