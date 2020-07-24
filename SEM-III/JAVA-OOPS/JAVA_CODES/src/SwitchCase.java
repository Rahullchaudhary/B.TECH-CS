/* SWITCH CASE EXAMPLE */

import java.awt.desktop.SystemSleepEvent;
import java.util.Scanner;

public class SwitchCase {
    public static void main(String[] args){
        int number;
        Scanner sc = new Scanner(System.in);
        System.out.println("ENTER NUMBER RANGE BETWEEN 1 TO 5 : ");
        number = sc.nextInt();
        switch (number)
        {
            case 1:
                System.out.println("ENTERED NUMBER IS 1 !");
                break;
            case 2:
                System.out.println("ENTERED NUMBER IS 2 !");
                break;
            case 3:
                 System.out.println("ENTERED NUMBER IS 3 !");
                 break;
            case 4:
                 System.out.println("ENTERED NUMBER IS 4 !");
                 break;
            case 5:
                System.out.println("ENTERED NUMBER IS 5 !");
            default :
                System.out.println("THANK YOU FOR YOUR KIND ATTENTION !");
        }
        sc.close();

    }

}
