class pattern6 {

    public static void main(String[] args) {
        m1();
    }
    
    static void m1() {
        int num = 3567; 
        int temp = num;
        int res, sum = 0, prod = 1, count = 0;        

        System.out.println("Every digit is odd or even " );
        for (int i = 0; i <= temp; i++) {
            res = temp % 10;
            temp = temp / 10;
            sum = sum + res;
            prod = prod * res;
            if(res%2 == 0){
                System.out.println(res + "is even ");
            }
            else{
                System.out.println(res + "is odd");
            }
            count++;
        }
        System.out.println("Number of Digits : " + count); 
        System.out.println("Sum : " + sum); // 21
        System.out.println("Product : " + prod); // 630
    }
}

/*
Output :
Every digit is odd or even
7is odd
6is even
5is odd
3is odd
Number of Digits : 4
Sum : 21
Product : 630 
 */

/*
1. even or odd
2. lastdigit or remainder 
3. lastdigit using method

Assignment:
4. count the number of digits
5. find the even or odd digits present in a given number. ex: 12345 - 1 is odd, 2 is even

6. sum and product of all the digit. ex: 


 */