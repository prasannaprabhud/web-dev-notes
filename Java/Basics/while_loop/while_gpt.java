package while_loop;

import java.util.Scanner;

public class while_gpt {
    public static void main(String[] args) {
        
    }

    static void q1() {
        //  print number from 1 to 10
        int n = 1;
        while (n <= 10) {
            // System.out.println(n++);
            // System.out.println(n + 1); // CTE : INFINITY LOOP
            System.out.println(n);
            n++; }
    }
    static void q2() {
          // print even numbers 
        int n = 2;
        while(n <= 20){
            // System.out.println(n);
            // n = n + 2;
            // n += 2;
            // n++; n++;
            // System.out.println(n); n++; n++;
            // System.out.println(n); n += 2;
            System.out.println(n); n = n + 2;

        }
    }
    static void q3() {
         // sum of numbers from 1 to n
        // int n = 1 ; int  res = 1; int i = 1;
        int n = 10, i = 1, sum = 0;
        while (i <= n) {
            sum = sum + i;
            i++;
        }
        System.out.println(sum);

    }
    static void q4() {
        int n = 10;
        while (0 <= n) {
            System.out.println(n--);
        }
        System.out.println(n); // -1
    }
    static void q5() {
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
    static void q6() {
        int num = 12346;
        int i = 0 ;

        while (0 < num) { // 0 <=  num : CTE
            num = num / 10;
            i++;
        }
        System.out.println(i);
    }
    static void q7() {
          // count the number of digits

        int num = 1212, n = num;

        String i = "" ;
        
        while (0 < num) {
            i = i + (num % 10);
            // System.out.println(i);
            num = num / 10;
            // System.out.println(num);
        }

        int pal = Integer.parseInt(i);

        // System.out.println("num : " + num);
        // System.out.println("i : " + i);
        // System.out.println("n : " + n);
        
        // String res = pal == n ? (pal + " is palindrome") : (pal + " is not palindrome") ;
        // System.out.println(res);
        System.out.println(pal == n ? (pal + " is palindrome") : (pal + " is not palindrome"));
    }

    static void q8() {
        
        // fibonacci series 

        int  a = 0, b = 1, c, n = 20;
        System.out.print(a + " ");
        System.out.print(b + " ");
        while (b < n) {
            c = a + b;
            a = b;
            b = c;
            System.out.print(b + " ");
            
        }
    }
    static void q9() {

        // Factorial 

        int i = 5, f = 1;
        // System.out.println(1*2*3*4*5); // 120
        while (1<=i) {
            f *= i;
            i--;
        }
        System.out.println(f);

    }
    static void q10() {
         int i = 1, n = 100;
        while (i<=n) {
            if (i == 2 || i == 3 || i == 5  || (i/i == 1 && i%2!=0 && i%3!=0 && i%5!=0 )) {
                System.out.println(i + " is a prime");
            }
            i++;
        }
    }
    static void q11() {
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
    static void q12() {}
    static void q13() {}
    static void q14() {}
    static void q15() {}

}
