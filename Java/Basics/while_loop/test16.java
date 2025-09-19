package while_loop;

import java.util.*;

public class test16 {
    public static void main(String[] args) {
        
        int balance = 1000;

        System.out.println("***** SIMPLE ATM ***** \n ");

        System.out.println("To perform the operations : \n 1.) Withdraw \n 2.) Deposit \n 3.) Exit \n Enter the Number :  ");

        Scanner input = new Scanner(System.in);

        int choice = input.nextInt();

        while(choice < 3){

            switch (choice) {

                case 1:{
                    System.out.println("\n Enter the Amount To Withdraw : ");
                    int Withdraw = input.nextInt();
                    balance = balance - Withdraw;
                    System.out.println("Your current balance is : " + balance);
                }
                break;

                case 2:{
                    System.out.println("\n Enter the Amount To Deposit : ");
                    int Deposit = input.nextInt();
                    balance = balance + Deposit;
                    System.out.println("Your current balance is : " + balance);
                }
                break;

                case 3:
                    System.out.println("\n Thank You for visit your ATM :)");
                    break;
            
                // default:
                //     break;
            }

        System.out.println("To perform the operations : \n 1.) Withdraw \n 2.) Deposit \n 3.) Exit \n Enter the Number :  ");
        choice = input.nextInt();


        }

    }
}
