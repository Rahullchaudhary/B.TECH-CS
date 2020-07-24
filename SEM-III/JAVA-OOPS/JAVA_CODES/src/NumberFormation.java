/* ACCEPT A NUMBER FROMM USER AND REVERSE IT. */

import java.util.Scanner;
public class NumberFormation {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        System.out.println("ENTER A NUMBER : ");
        int number = sc.nextInt();
        int reverse_num = 0;
        while (number!= 0){
            int digit = number% 10;
            number = number /10;
            reverse_num = reverse_num * 10 + digit;
        }
        System.out.println("REVERSE NUMBER IS : " + reverse_num);
        sc.close();
    }
}
