package while_loop;

import java.util.Scanner;

public class test11 {
    public static void main(String[] args) {
        // System.out.println("exit" == "Exit"); // false

        Scanner input = new Scanner(System.in);

        String a ;
        boolean con = true;

        // System.out.println("Enter exit : ");
        // a = input.nextLine();
        // String b = a;
        // System.out.println("Your input is : " + a);
        // System.out.println(b == "exit");
        // System.out.println(b.equals("exit"));


        while(con){
            System.out.println("Enter exit : ");
            a = input.nextLine();
            if(a.equals("exit")){
                con = false;
                System.out.println("Your input is : " + a);
                // break;
            }
        }

        
    }
}
