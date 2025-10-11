public class test{

    public static void main(String[] args){
        m1(6); 
    }
    
    static void m1(int num){
        int count = 0, sum = 0, product = 1;
        for(int i = 1; i <= num; i++ ){
            if(num%i == 0){
                // System.out.println(i + " "); // factors
                // count++;
                sum = sum + i;
                product = product * i;
            }
        }
        // System.out.println(count); // number of factors
        System.out.println("Sum : " + sum);
        System.out.println("Product : " + product);

    }
}