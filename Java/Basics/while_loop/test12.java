package while_loop;

public class test12 {
    public static void main(String[] args) {
        // int n = 96, num = 0, i = 0;
        // boolean con = true;
        m1(99999999);
        
    }

    static void m1(int n) {
        int num = 0;
        while (0 < n) { // 0 <=  num : CTE
                num = num + (n % 10);
                n = n / 10;
                System.out.println(num);
        }
    }
}
