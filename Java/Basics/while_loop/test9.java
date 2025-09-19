package while_loop;

// Factorial 

public class test9 {

    public static void main(String[] args) {
        int i = 5, f = 1;
        // System.out.println(1*2*3*4*5); // 120
        while (1<=i) {
            f *= i;
            i--;
        }
        System.out.println(f);

    }
    
}
