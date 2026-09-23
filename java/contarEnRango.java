public class Solution {
    public int contarEnRango(int[] numbers, int min, int max) {
        int contador = 0;
        for (int i = 0; i < numbers.length; i++) {
           contador = (numbers[i] >= min && numbers[i] <= max) ? contador + 1 : contador;
        }
        return contador;
    }
}
