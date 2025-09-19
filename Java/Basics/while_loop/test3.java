package while_loop;


public class test3 {
    @SuppressWarnings("unused")
    public static void main(String[] args) {
        // sum of numbers from 1 to n
        // int n = 1 ; int  res = 1; int i = 1;
        int n = 10, i = 1, sum = 0;
        while (i <= n) {
            sum = sum + i;
            i++;
        }
        System.out.println(sum);

    }
    
}
