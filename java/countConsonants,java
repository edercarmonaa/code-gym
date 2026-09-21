public class Solution {
    public int countConsonants(String text) {
        int caracteres=0;
        String vocales = "aeiouAEIOU";
        for (char c : text.toCharArray()) {
            if ( c >= 65  && c <= 122 ){
                if (vocales.indexOf(c) == -1) {
                    caracteres ++;
                }
            }
        }
        return caracteres;
    }
}
