class pattern{
    public static void main(String[] args) {
        int n = 5;

        for (int i = n; i >= 1; i--) {

            int p = 5;
            for (int j = 1; j <= i  ; j++) {
                System.out.print( p + " " ); 
                p--;
            }
            System.out.println();
        }
    }
}

/*
5 4 3 2 1
5 4 3 2
5 4 3
5 4
5
 */