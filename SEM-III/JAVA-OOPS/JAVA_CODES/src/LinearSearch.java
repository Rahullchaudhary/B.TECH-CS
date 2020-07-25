/* LINEAR SEARCH */

import java.sql.SQLOutput;
import java.util.Scanner;

public class LinearSearch {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        int[] arr = {12,13,34,35,44,67,70,65,53,30,25,10};
        System.out.println("ENTER THE ELEMENT TO SEARCH : ");
        int searchElement = sc.nextInt();
        int i;
        // FOR LOOP TO ITERATE OVER ARRAY
        for (i = 0; i < arr.length; i++) {
            if (searchElement == arr[i]){
                System.out.println("ELEMENT FOUND !");
                break;
            }
        }
        if (i == arr.length){
            System.out.println("ELEMENT NOT FOUND BY OUT SIDE !");
        }
        sc.close();
    }
}
