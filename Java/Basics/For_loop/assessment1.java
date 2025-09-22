package For_loop;

public class assessment1 {
    public static void main(String[] args) {
        // method1();
        method2();
    }

    static void method1(){
        int i = 10;
        while (i++ <= 10) {
            i++;
        }
        System.out.println(i); // 13
    }

    static void method2(){
        // infinity loop
        int i = 0;
        for( ; ; ){
            System.out.println(i);
        }
    }

    static void method(){
        
    }
    
    // static void method(){}
}
