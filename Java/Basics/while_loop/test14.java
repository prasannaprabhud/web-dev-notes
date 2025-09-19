package while_loop;

// sum of digits in single digit

public class test14 {
    public static void main(String[] args) {
        int num = 96;

        /*  // step 1 :
        int num = 96;
        int sum = 0;
        int temp = num;
        while (temp > 0) {
            sum = sum + (temp % 10);
            temp = temp / 10;
        }
        System.out.println(sum); // 15
        */

        while (num >= 10) // Mistake : n < 10 : false 
         {
            int sum = 0;
            int temp = num;
            while (temp > 0) {
                sum = sum + (temp % 10);
                temp = temp / 10;
            }
            num = sum ;
        }

        System.out.println(num);

    }
}
