package while_loop;

// Greatest common divisor or highest common factor 

public class test15 {
    public static void main(String[] args) {
        int a = 84;
        int b = 120;
        gcd(a, b);
        gcd(70, 85);
        gcd(12, 18);
       
    }

    static void gcd(int a, int b){
        int aa = a, bb = b;
         while (a > 0) {
            if(a > b){
                int temp = a; // LOCAL VARIABLE
                a = b;
                b = temp;
            }
            int temp = b - a; // LOCAL VARIABLE
            // System.out.println("TEMP = " + temp);
            b = a;
            a = temp;
            // System.out.println("WHILE A : " + a);
            // System.out.println("WHILE B : " + b);
        }

        // System.out.println("A = " + a);
        System.out.println("GCD " + aa + " and " + bb + " is " + b);
    }
    
}
