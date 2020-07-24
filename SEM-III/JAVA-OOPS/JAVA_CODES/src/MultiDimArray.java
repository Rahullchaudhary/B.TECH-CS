/* HOw TO CREATE MULTI-DEMENTIONAL ARRAY. */

public class MultiDimArray {
    public static void main(String[] args) {
        int A[][] = new int[3][3];
        int B[][] = {{1,2,3},{4,5,6},{7,8,9}};

        for (int i = 0; i < 3; i++){
            for (int j = 0; j < 3; j++){
                System.out.print(B[i][j]);
            }
            System.out.println();
        }
    }
}
