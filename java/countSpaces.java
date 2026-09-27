public class Solution {
    public int countSpaces(String text) {
        int contador = 0;
        for (int i = 0; i < text.length(); i ++){
            contador = (text.charAt(i) == ' ')? contador + 1 : contador;
        }
        return contador;
    }
}
