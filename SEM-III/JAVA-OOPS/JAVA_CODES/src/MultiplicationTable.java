/* Practice Example 4: Create Multiplication Table Using For Loop
   Practice example 4: For loop, multiplication tables.
   Ask the user to enter a number for which he wants to get multiplication
   tables and then display a multiplication table for that number till the
   multiple of 10.
 */

import java.util.Scanner;

public class MultiplicationTable {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        int num;
        System.out.println("ENTER NUMBER FOR CREATE TABLE : ");
        num = sc.nextInt();
        for (int i = 1; i <= 10; i++){
            System.out.println(num + " * " + i + " = " + (num * i));
        }
        sc.close();
    }
}
