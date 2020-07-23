/* ACCEPT NUMBER FROM USER AND STOP WHEN USER ENTERS 3 EVEN NUMBER */


import java.util.Scanner;
public class WHILE_LOOP {
    public static void main(String[] args) {
        Scanner SC = new Scanner(System.in);
        int EVEN_COUNT = 0;
        while (EVEN_COUNT != 3){
            System.out.println("ENTER A POSITIVE INTEGER : ");
            int NUMBER = SC.nextInt();
            if (NUMBER % 2 == 0){
                EVEN_COUNT ++;
            }
        }
        System.out.println("THANK YOU !");
        SC.close();
    }
}
