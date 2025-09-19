package while_loop;

import java.util.Scanner;

public class test5 {
    public static void main(String[] args) {
        Scanner input = new Scanner(System.in);
        System.out.println("Enter the number : ");
        int n = input.nextInt();
        int i = 1;
        while (i <= 10) {
            // System.out.println(n + 'x' + i + '=' + (n * i)); // '' converts char datatype
            System.out.println(n + " x " + i + " = " + (n * i));
            i++;
        }

    }
    
}
