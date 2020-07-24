/* Practice Example 6: Accept Multiple Values Using Loops & Scanner
   Practice example 6: Using loops to accept multiple values from the user:

   As we know a scanner can be used to accept data from the user, but the scanner can only accept one value at a time.
   We also know that loops can be used to repeat a set of instructions/code.
   Try to nest a scanner inside a for loop to accept multiple values from user using the following steps:
   Ask the user the number of values he wishes to enter.
   Depending on the number of values, accept the same number of values from the user using a scanner and a for loop. E.g if the user enters the number 2, accept 2 values from the user and store them in an array.
   Display those values inside the array back to the user.   */

import java.util.Scanner;

public class AcceptMultiValues {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        System.out.println("ENTER THE NUMBER OF VALUES WHAT YOU WISH IN ARRAY : ");
        int num = sc.nextInt();
        int values[] = new int[num];
        for (int i = 0; i < num; i++){
            values[i] = sc.nextInt();
        }
        System.out.println("YOUR ENTERED VALUES ARE : ");
        for (int j = 0; j < num; j++){
            System.out.println(values[j]);
        }
        System.out.println("THANK YOU !");
        sc.close();
    }
}
