public class capitalizeFirstLetter {
    public String Solution(String text) {
        if (text.length() == 0) {
            return text;
        }
        return text.substring(0, 1).toUpperCase() + text.substring(1);
    }
}
