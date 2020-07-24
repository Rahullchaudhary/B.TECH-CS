/* FINDING ODD NUMBER FROM ARRAY USING LOOP */


import java.util.Scanner;
public class OddNumber {
    public static void main(String[] args) {
        int n;
        int temp;
        Scanner sc = new Scanner(System.in);
        System.out.println("ENTER THE NUMBER OF ARRAY : ");
        n = sc.nextInt();
        int number[] = new int[n];
        for (int i = 0; i < n; i++ ){
            number[i] = sc.nextInt();
        }
        for (int j = 0; j < n; j++){
            temp = number[j];
            if (temp % 2 == 0){
                System.out.println( number[j] + " : NUMBER IS EVEN !");
            }
            else{
                System.out.println(number[j] + " : NUMBER IS ODD !");
            }

        }
        sc.close();

    }
}
