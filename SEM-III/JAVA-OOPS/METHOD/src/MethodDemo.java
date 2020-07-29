/*
CREATE A METHOD CALLED DISPLAY(), THIS METHOD WILL PRINT
"HELLO WORLD", THIS METHOD DOES NOT RETURN ANY VALUE.
*/

public class MethodDemo {
    public static void main(String[] args) {
        System.out.println("Application Starts");
        // Creating object to call the method
        MethodDemo object = new MethodDemo();
        // Calling the Method display
        object.display();
        System.out.println("Exiting....");
    }
    // Declaring and defining diplay()
    public void display(){
        // Functionality
        System.out.println("Hello World !");
    }
}
