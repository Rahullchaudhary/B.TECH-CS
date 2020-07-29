/*
CREATE A METHOD CALL ADD, WHICH ACCEPT TWO ARGUMENTS OF TYPE INT
AND RETURN AN INTEGER VALUE THAT IS THE SUM OF TWO NUMBERS.
ACCEPT THE NUMBERS FROM USER
*/


import java.util.Scanner;

public class MethodDemoReturnType {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        System.out.println("Enter two Integer : ");
        int number1 = sc.nextInt();
        int number2 = sc.nextInt();
        // Declaring a variable  to store result of function call
        // Calling a Method add
        int result = add(number1, number2);
        System.out.println("Sum = " + result);

    }
    // Declaring and defining add method
    public static int add(int no1, int no2){
        // Return variable called response
        // That will hold the result that we are going to return
        int response = 0;
        // Task or Functionality
        response = no1 + no2;
        // Returning result to calling function
        return response;
    }
}
