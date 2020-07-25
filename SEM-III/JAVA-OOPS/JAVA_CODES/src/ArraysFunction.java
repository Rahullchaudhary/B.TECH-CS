/* ARRAY FUNCTION */

import java.util.Arrays;

public class ArraysFunction {
    public static void main(String[] args) {
        int[] arr = {10,20,30,40,50};
       /* String str = Arrays.toString(arr);
          System.out.println(str);*/
        /* For One Line Execution */
        System.out.println(Arrays.toString(arr));
        int size = 4;
        int[] brr = Arrays.copyOf(arr, size);
        System.out.println("brr : ");
        System.out.println(Arrays.toString(brr));
        }
    }
