/* FIND NUMBER IS PALINDROME OR NOT */


import java.util.Scanner;
public class NUMBER_PALINDROME {
    public static void main(String[] args) {
        Scanner SC = new Scanner(System.in);
        int NUM;
        System.out.println("PLEASE ENTER THE NUMBER TO CHECK NUMBER IS PALINDROME OR NOT : ");
        NUM = SC.nextInt();
        int REV = 0;
        int RES;
        int NUMBER = NUM;
        while (NUMBER > 0) {
            RES = NUMBER % 10;
            REV = (REV * 10) + RES;
            NUMBER = NUMBER / 10;
        }
        System.out.println(REV);
        if (REV == NUM){
            System.out.println("ENTERED NUMBER IS PALINDROME !");
        }
        else{
            System.out.println("ENTERED NUMBER IS NOT PALINDROME !");
        }
        System.out.println("THANK YOU !");
        SC.close();
    }
}
