public class Solution {
    public int countAboveAverage(double[] numbers) {
        int contador = 0;
        double suma = 0;
        for (int i = 0; i < numbers.length; i++) {
            suma += numbers[i];
        }
        double media = suma / numbers.length;
        for (int i = 0; i < numbers.length; i++) {
           contador = (numbers[i] > media) ? contador + 1 : contador;
        }
        return contador;
    }
}
