public class Solution {
    public int CountDigits(int n) {
        int digitos = 0;
        do{
            digitos++;
            n = n / 10;
            System.out.println(n);
        }while(n != 0);
        return digitos;
    }
}
