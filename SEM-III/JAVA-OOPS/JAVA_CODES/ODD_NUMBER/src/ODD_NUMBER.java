/* FINDING ODD NUMBER FROM ARRAY USING LOOP */


import java.util.Scanner;
public class ODD_NUMBER {
    public static void main(String[] args) {
        int N;
        int TEMP;
        Scanner SC = new Scanner(System.in);
        System.out.println("ENTER THE NUMBER OF ARRAY : ");
        N = SC.nextInt();
        int NUMBER[] = new int[N];
        for (int i = 0; i < N; i++ ){
            NUMBER[i] = SC.nextInt();
        }
        for (int j = 0; j < N; j++){
            TEMP = NUMBER[j];
            if (TEMP % 2 == 0){
                System.out.println( NUMBER[j] + " : NUMBER IS EVEN !");
            }
            else{
                System.out.println(NUMBER[j] + " : NUMBER IS ODD !");
            }

        }

    }
}
