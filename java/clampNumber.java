public class Solution {
    public int clampNumber(int num, int min, int max) {
        // Devuelve num limitado al rango [min, max]
        return num < min ? min : num > max ? max : num;
    }
}
