/*
ASSUME YOU ARE THE OWNER OF AN ONLINE BUSINESS.TO ATTRACT MORE CUSTOMER IN THIS CoVid19
SITUATION, YOU HAVE DECIDED TO ANNOUNCE A SPECIAL DISCOUNT FOR SOME TIME ON ALL PURCHASES.

YOU HAVE ALREADY DECIDED UPON THE COUPON CODE AS CoVid19.

CREATE A PROGRAM IN JAVA TO INPUT THE COUPON CODE FROM A CLIENT IF THE CLIENT'S COUPON
CODE MATCHES YOUR ALREADY AGREED UPON CODE, THEN PRINT A MESSAGE TO THE CLIENT.
HERE IS WHAT YOU NEED TO CHECK :

1. IF THE CLIENT'S COUPON CODE IS BLANK OR EMPTY, THEN PRINT A MESSAGE
   "The Coupon Code can not be Blank or Empty"
2. IGNORE CASE SENSITIVE
*/

import java.util.Scanner;

public class ControlStatement {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        System.out.println("Please Enter Your Coupun Code For Get A Huge Discount : ");
        String CouponCode = sc.nextLine();
        if (CouponCode.equalsIgnoreCase("CoVid19")){
            System.out.println("Congratulation, Your Coupon Code Is Accepted !");
            System.out.println("Thank You !");
        }
        else if (CouponCode.isBlank()){
            System.out.println("The Coupon Code Can Not Be Blank Or Empty !");
        }
        else{
            System.out.println("Your Entered Coupon Code Is Not Valid !");
        }
    }
}
