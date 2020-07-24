/* CALCULATE THE SIMPLE INTEREST. */


import java.util.Scanner;
public class SimpleIntrest {
    public static void main(String[] args) {
        double p;
        double n;
        double r;
        double si;
        Scanner object =  new Scanner(System.in);

        System.out.println("ENTER THE PRINCIPAL AMMOUNT : ");
        p = object.nextFloat();

        System.out.println("ENTER THE RATE OF INTEREST : ");
        r = object.nextFloat();

        System.out.println("ENTER THE NUMBER OF YEARS : ");
        n = object.nextFloat();

        si = (p * n * r) / 100;
        System.out.println("YOUR SIMPLE INTREST IS : " + si + " rs.");
        object.close();
    }
}