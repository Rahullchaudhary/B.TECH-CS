/* CALCULATE THE SIMPLE INTEREST. */


import java.util.Scanner;
public class SIMPLE_INTREST {
    public static void main(String[] args) {
        double P;
        double N;
        double R;
        double SI;
        Scanner object =  new Scanner(System.in);

        System.out.println("ENTER THE PRINCIPAL AMMOUNT : ");
        P = object.nextFloat();

        System.out.println("ENTER THE RATE OF INTEREST : ");
        R = object.nextFloat();

        System.out.println("ENTER THE NUMBER OF YEARS : ");
        N = object.nextFloat();

        SI = (P * N * R) / 100;
        System.out.println("YOUR SIMPLE INTREST IS : " + SI + " rs.");
        object.close();
    }
}