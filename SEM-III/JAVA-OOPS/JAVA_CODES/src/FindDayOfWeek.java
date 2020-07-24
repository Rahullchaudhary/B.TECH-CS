/* Practice Example 3: Finding Day Of The Week Using Switch Case
   Practice example 3: Switch case, Day of the week
   Write a program to accept the day of the week from the user and display the name of the day accordingly.
   For example, if the user enters the day number as 1, the user should get a message as Monday.
   Use a switch case to implement the solution.  */


import java.util.Scanner;

public class FindDayOfWeek {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        int num;
        System.out.println("ENTER NUMBER RANGE(1-7) : ");
        num = sc.nextInt();
        switch(num){
            case 1:
                System.out.println("MONDAY");
                break;
            case 2:
                System.out.println("TUESDAY");
                break;
            case 3:
                System.out.println("WEDNESDAY");
                break;
            case 4:
                System.out.println("THURSDAY");
                break;
            case 5:
                System.out.println("FRIDAY");
                break;
            case 6:
                System.out.println("SATURDAY");
                break;
            case 7:
                System.out.println("SUNDAY");
                break;
        }
       sc.close();
    }
}
