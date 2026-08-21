public class mostFrequentChar {
    public String Solution(String text) {
        HashMap<Character, Integer> caracteres = new HashMap<>();
        for (char c : text.toCharArray()) {
            caracteres.merge(c, 1, Integer::sum);
        }
         Map.Entry<Character, Integer> mayor = Collections.max(
            caracteres.entrySet(), 
            Map.Entry.comparingByValue()
        );
        return String.valueOf(mayor.getKey());
    }
}
