/* FIND NUMBER IS PALINDROME OR NOT */


import java.util.Scanner;
public class NumberPalindrome {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        int num;
        System.out.println("PLEASE ENTER THE NUMBER TO CHECK NUMBER IS PALINDROME OR NOT : ");
        num = sc.nextInt();
        int rev = 0;
        int res;
        int number = num;
        while (number > 0) {
            res = number % 10;
            rev= (rev * 10) + res;
            number = number / 10;
        }
        System.out.println(rev);
        if (rev == num){
            System.out.println("ENTERED NUMBER IS PALINDROME !");
        }
        else{
            System.out.println("ENTERED NUMBER IS NOT PALINDROME !");
        }
        System.out.println("THANK YOU !");
        sc.close();
    }
}
