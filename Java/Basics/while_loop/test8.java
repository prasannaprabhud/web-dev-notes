package while_loop;

// fibonacci series 

public class test8 {
    public static void main(String[] args) {
        
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
    
}
