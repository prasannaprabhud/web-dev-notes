class pattern{
    public static void main(String[] args) {
        int n = 5, p = 1;

        for (int i = n; i >= 1; i--) {
            for (int j = 1; j <= i; j++) {
                System.out.print( p + " " ); 
            }
            System.out.println();
            p++;
        }
    }
}

/*

1 1 1 1 1
2 2 2 2
3 3 3
4 4
5

 */