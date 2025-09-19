package while_loop;

// prime number 

public class test10 {
    
    public static void main(String[] args) {
        int i = 1, n = 100;
        while (i<=n) {
            if (i == 2 || i == 3 || i == 5  || (i/i == 1 && i%2!=0 && i%3!=0 && i%5!=0 )) {
                System.out.println(i + " is a prime");
            }
            i++;
        }
    }

}
