public class Solution {
    public int sumMultiples(int n) {
        int suma = 0;
        for (int i = 3; i < n; i++){
            if (i % 3 == 0 || i % 5 == 0){
                suma += i;
            }
        }
        return suma;
    }
}
