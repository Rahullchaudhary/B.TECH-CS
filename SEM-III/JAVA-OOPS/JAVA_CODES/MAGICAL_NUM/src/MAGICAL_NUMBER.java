/* CREATE AN APPICATION CALLED 'MAGICAL NUMBER'.
   THIS APPLICATION WILL ASK USER TO ENTER A NUMBER AND YOU WILL MATCH THAT NUMBER
   WITH YOUR SELECTED MAGICAL NUMBER,IF MATCHED THEN USER WINS,IF NOT USER WILL TRY
   AGAIN,USER HAVE THE OPTION TO EXIT BY PRESSING.  */

import java.util.Scanner;

public class MAGICAL_NUMBER {
    public static void main(String[] args) {
        Scanner SC = new Scanner(System.in);
        System.out.println("WELCOME TO MAGFICAL NUMBERS ! ");
        int MAGICAL_NUM = 786;
        int NUMBER;
        do{
            System.out.println("ENTER A POSITIVE INTEGER, OR 0TO EXIT : ");
            NUMBER = SC.nextInt();
            if(NUMBER == MAGICAL_NUM){
                System.out.println("YOU WINS THE GAME !");
                break;
            }
            else if (NUMBER != 0){
                System.out.println("TRY AGAIN !");
            }

        }while (NUMBER != 0);
        System.out.println("THANK YOU FOR PLAYING !");
        SC.close();
    }
}
