public class commonChars {
    public int Solution(String a, String b) {
        int[] conteoA = new int[26];
        int[] conteoB = new int[26];
        
        // Contar frecuencias en la cadena A
        for (char c : a.toLowerCase().toCharArray()) {
            conteoA[c - 'a']++;
        }
        
        // Contar frecuencias en la cadena B
        for (char c : b.toLowerCase().toCharArray()) {
            conteoB[c - 'a']++;
        }
        
        // Sumar el mínimo de apariciones de cada letra
        int comunes = 0;
        for (int i = 0; i < 26; i++) {
            comunes += Math.min(conteoA[i], conteoB[i]);
        }
        
        return comunes;
    }
}
