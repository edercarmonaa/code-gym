public class Solution {
    public int countUniqueChars(String text) {
        int[] conteoA = new int[255];
        int caracteres=0;
        for (char c : text.toCharArray()) {
            conteoA[c]++;
        }
        for (int i = 0; i < 255; i++) {
            caracteres += conteoA[i] > 0? 1 : 0;
        }
        return caracteres;       
    }
}
