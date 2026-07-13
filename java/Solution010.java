public class Solution {
    public boolean isPalindrome(String text) {
        if (text == null || text.isEmpty() || text.length() == 1)
        {
            return true;
        }
        int izquierda = 0;
        int derecha = text.length() - 1;
        while (izquierda < derecha ){
            if (Character.toLowerCase(text.charAt(izquierda)) != Character.toLowerCase(text.charAt(derecha)) )
            {
                return false;
            }
            izquierda ++;
            derecha--;
        }
        return true;
    }
}