/* CREATE AN APPICATION CALLED 'MAGICAL NUMBER'.
   THIS APPLICATION WILL ASK USER TO ENTER A NUMBER AND YOU WILL MATCH THAT NUMBER
   WITH YOUR SELECTED MAGICAL NUMBER,IF MATCHED THEN USER WINS,IF NOT USER WILL TRY
   AGAIN,USER HAVE THE OPTION TO EXIT BY PRESSING.  */

import java.util.Scanner;

public class MagicalNumber {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        System.out.println("WELCOME TO MAGFICAL NUMBERS ! ");
        int magical_num = 786;
        int number;
        do{
            System.out.println("ENTER A POSITIVE INTEGER, OR 0TO EXIT : ");
            number = sc.nextInt();
            if(number == magical_num){
                System.out.println("YOU WINS THE GAME !");
                break;
            }
            else if (number != 0){
                System.out.println("TRY AGAIN !");
            }

        }while (number != 0);
        System.out.println("THANK YOU FOR PLAYING !");
       sc.close();
    }
}
