public class Solution {
    public int countUppercase(String text) {
        int contador = 0;
        for (int i = 0; i < text.length(); i++) {
            if (Character.isUpperCase(text.charAt(i))) {
                contador++;
            }
        }
        return contador;
    }
}
