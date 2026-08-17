public class esNumeroValido {
    public boolean solution(String value) {
       String regex = "^-?\\d+([.,]\\d+)?$";
        return value.matches(regex);
    }
}
