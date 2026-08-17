public class Panagram {
    public boolean isPangram(String sentence) {
        return sentence.toLowerCase().chars()
                   .filter(c -> c >= 'a' && c <= 'z')
                   .distinct()
                   .count() == 26;
    }
}
