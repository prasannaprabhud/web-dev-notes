class Character_pattern{
    public static void main(String[] args) {
        char ch = 65;
        int n = (int) ch + 5;

        for (int i = (int) ch; i <= n; i++) {
            for (int j = (int) ch; j <= i; j++) {

                System.out.print( (char) i + " " ); 
            }
            System.out.println();
        }
    }
}

/*
similar program for 

i:
A
B B
C C C
D D D D
E E E E E
F F F F F F

j:
A
A B
A B C
A B C D
A B C D E
A B C D E F

 */
