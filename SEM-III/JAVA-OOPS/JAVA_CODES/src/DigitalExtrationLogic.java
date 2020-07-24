/* ACCEPT A NUMBER FROM USER AND PRINT ALL THE DIGITS OF GIVEN NUMBER.
   INPUT  : 12345
   OUTPUT : 5, 4, 3, 2, 1
 */

import java.util.Scanner;
public class DigitalExtrationLogic {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        System.out.println("ENTER A POSITIVE INTEGER : ");
        int number = sc.nextInt();
        while (number != 0){
            int digit = number % 10;
            System.out.print(digit);
            if(number >= 10){
                System.out.print(", ");
            }
            number = number / 10;
        }
        System.out.println();
        System.out.println("THANK YOU !");
       sc.close();
    }
}
