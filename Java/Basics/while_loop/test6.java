package while_loop;

// count the number of digits

public class test6 {
    public static void main(String[] args) {
        int num = 12346;
        int i = 0 ;

        while (0 < num) { // 0 <=  num : CTE
            num = num / 10;
            i++;
        }
        System.out.println(i);
        

    }
}
