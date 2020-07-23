/* ACCEPT A NUMBER FROM USER AND PRINT ALL THE DIGITS OF GIVEN NUMBER.
   INPUT  : 12345
   OUTPUT : 5, 4, 3, 2, 1
 */

import java.util.Scanner;
public class DIGITAL_EXTRATION_LOGIC {
    public static void main(String[] args) {
        Scanner SC = new Scanner(System.in);
        System.out.println("ENTER A POSITIVE INTEGER : ");
        int NUMBER = SC.nextInt();
        while (NUMBER != 0){
            int DIGIT = NUMBER % 10;
            System.out.print(DIGIT);
            if(NUMBER >= 10){
                System.out.print(", ");
            }
            NUMBER = NUMBER / 10;
        }
        System.out.println();
        System.out.println("THANK YOU !");
        SC.close();
    }
}
