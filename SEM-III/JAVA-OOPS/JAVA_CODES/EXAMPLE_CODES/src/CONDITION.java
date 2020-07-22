/* ABLE TO VOTING OR NOT. */

import java.util.Scanner;
public class CONDITION {
    public static void main(String[] args){
        int age;
        Scanner object = new Scanner(System.in);
        System.out.println("ENTER YOUR AGE : ");
        age = object.nextInt();
        if (age < 18)
        {
            System.out.println("YOU ARE NOT ABLE TO GIVE VOTE !");
        }
        else
        {
            System.out.println("YOU ARE ABLE TO GIVE VOTE !");
        }
    }
}
