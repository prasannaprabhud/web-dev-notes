public class Factorial{

    public static void main(String[] args){
        m1(5); // 120
    }
    
    static void m1(int n){
        int fac = 1;
        for(int i = 1; i <= n; i++ ){
            fac = fac * i;
        }
        System.out.println(fac);
    }
}