/* ACCEPT A NUMBER FROMM USER AND REVERSE IT. */

import java.util.Scanner;
public class NUMBER_FORMATION {
    public static void main(String[] args) {
        Scanner SC = new Scanner(System.in);
        System.out.println("ENTER A NUMBER : ");
        int NUMBER = SC.nextInt();
        int REVERSE_NUMBER = 0;
        while (NUMBER != 0){
            int DIGIT = NUMBER % 10;
            NUMBER = NUMBER /10;
            REVERSE_NUMBER = REVERSE_NUMBER * 10 + DIGIT;
        }
        System.out.println("REVERSE NUMBER IS : " + REVERSE_NUMBER);
        SC.close();
    }
}
