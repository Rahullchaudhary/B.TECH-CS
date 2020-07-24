/* SUM OF ALL THE EVEN ELEMENTS OF GIVEN  ARRAY */

public class ArraySum {
    public static void main(String[] args) {
        int[] arr = {12,13,34,54,53,65,67,78,97};
        int sum = 0;
        for(int i=0;i < arr.length;i++){
            if (arr[i] %2 == 0) {
                sum = arr[i] + sum;
            }
        }
        System.out.println("SUM OF EVEN NUMBER OF ARRAY : " + sum);
    }
}
