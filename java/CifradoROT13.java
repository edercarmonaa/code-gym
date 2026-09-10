import java.util.Arrays;

public class Solution {
    public String rot13(String text) {
        char reemplazo = '\u0000';
        StringBuilder resultado = new StringBuilder(text);
        char[] alfabeto = "abcdefghijklmnopqrstuvwxyz".toCharArray();

       for (int i = 0; i < text.length(); i++) {
            char c = text.charAt(i);
            if (Character.toLowerCase(c) >= 'a' && Character.toLowerCase(c) <= 'z'){
                int posicionOriginal = Arrays.binarySearch(alfabeto, Character.toLowerCase(c));
                int nuevaPosicion = (((posicionOriginal + 13)%26) + 26) % 26;
                reemplazo = (Character.isLowerCase(c))? alfabeto[nuevaPosicion] : Character.toUpperCase(alfabeto[nuevaPosicion]);
            }else{
                reemplazo = c;
            }
           resultado.setCharAt(i, reemplazo);
        }
        return resultado.toString();
    }
}
