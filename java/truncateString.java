public class Solution {
    public String truncateString(String text, int max) {
        String resultado = "";
        if (text.length() <= max) 
            return text;
        for (int i = 0; i < max; i ++){
            resultado = resultado + text.charAt(i);
        }
        resultado = resultado + "...";
        return resultado;
    }
}
