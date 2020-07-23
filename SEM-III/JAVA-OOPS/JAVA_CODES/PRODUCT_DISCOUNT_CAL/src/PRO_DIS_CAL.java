/* Practice Example 5: Product Discount Calculator Using For Loop & Array
   Practice example 5: Arrays and loops, product discount calculator.--->

   You are given prices of a couple of products and those prices are stored in an array titled “ticket_price”.
   This is what the array looks like: int ticket_price[] ={100,150,500,20};
   You now need to calculate the discounted price for each item, depending on the percent discount entered by the user.
   For example, if the user enters the value of discount percentage as 10, you need to discount the price from the above array by 10%.
   You need to store these values inside of a new array and finally print all the elements of the new array which contains the discounted prices.
   This is what the output should look like:
   90
   135
   450
   18
   The mathematical formula for calculating the discounted price is as follows:
   Discounted_price = current_price - (current_price * discount_percentage)/100   */


import java.util.Scanner;

public class PRO_DIS_CAL {
    public static void main(String[] args) {
        Scanner SC = new Scanner(System.in);
        int DIS_PER;
        int TICKET_PRICE[] = {100,150,500,20};
        int DISCOUNTED_PRICE[] = new int[TICKET_PRICE.length];
        System.out.println("ENTER DISCOUNT PERCENTAGE : ");
        DIS_PER = SC.nextInt();
        for (int i = 0; i < TICKET_PRICE.length; i++){
            DISCOUNTED_PRICE[i]  = (TICKET_PRICE[i] - (TICKET_PRICE[i] * DIS_PER) / 100);
        }
        for (int j = 0; j < DISCOUNTED_PRICE.length; j++){
            System.out.println(DISCOUNTED_PRICE[j]);
        }
        System.out.println("THANK YOU !");
        SC.close();
    }
}
