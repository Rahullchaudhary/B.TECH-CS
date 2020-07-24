/* ACCEPT NUMBER FROM USER AND STOP WHEN USER ENTERS 3 EVEN NUMBER */


import java.util.Scanner;
public class WhileLoop {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        int even_count = 0;
        while (even_count != 3){
            System.out.println("ENTER A POSITIVE INTEGER : ");
            int NUMBER = sc.nextInt();
            if (NUMBER % 2 == 0){
                even_count ++;
            }
        }
        System.out.println("THANK YOU !");
        sc.close();
    }
}
