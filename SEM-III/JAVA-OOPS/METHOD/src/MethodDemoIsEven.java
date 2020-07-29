/*
CREATE A METHOD IS EVEN(int no1),
WHICH ACCEPT ONE ARGUMENT OF TYPE INT AND RETURN TRUE IF no1 IS
Even Otherwise False.
*/

import java.util.Scanner;

public class MethodDemoIsEven {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        System.out.println("Enter an Integer : ");
        int no1 = sc.nextInt();
        // create an object to call function
        MethodDemoIsEven object = new MethodDemoIsEven();
        boolean result = object.isEven(no1);
        System.out.println("The Given Number Is Even : " + result);
    }

    public boolean isEven(int no1) {
        boolean response = false;
        if (no1 % 2 == 0) {
            response = true;
        }
        return response;
    }
}
