package while_loop;

// count the number of digits

public class test7 {
    public static void main(String[] args) {
    
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
}
