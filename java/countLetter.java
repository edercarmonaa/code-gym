public class Solution {
    public int countLetter(String text, String letter) {
        int contador = 0;
        for (int i = 0; i < text.length(); i ++){
            if (text.toUpperCase().charAt(i) == letter.toUpperCase().charAt(0)){
                contador++;
            }
        }
        return contador;
    }
}
