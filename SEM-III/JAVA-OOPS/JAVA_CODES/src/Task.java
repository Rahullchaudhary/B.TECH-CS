import java.util.Random;

public class Task {
    public static void main(String[] args) {

        System.out.println(generateOTP(6));
    }

    private static char[] generateOTP(int length) {
        String numbers = "1234567890";
        Random random = new Random();          // For get random value instead of Scanner
        char[] otp = new char[length];
        for(int i = 0; i< length ; i++) {
            // Use of charAt() method : to get character value
            // Use of nextInt() as it is scanning the value as int
            otp[i] = numbers.charAt(random.nextInt(numbers.length()));
        }
        System.out.print("Your OTP is : ");
        return otp ;
    }
}