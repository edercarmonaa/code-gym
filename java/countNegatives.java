public class Solution {
    public int countNegatives(int[] numbers) {
        int contador = 0;
        for (int i = 0; i < numbers.length; i++) {
            contador = (numbers[i] < 0) ? contador += 1: contador;
        }
        return contador;
    }
}
