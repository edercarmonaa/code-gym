class SqueakyClean {
    static String clean(String identifier) {
        char[] asArray = identifier.toCharArray();
        StringBuilder cleanString = new StringBuilder();
        boolean bandera = false;
        char[] digits = {'4','3','0','1','7'};
        char[] letras = {'a','e','o','l','t'};
        for (char ch: asArray) {
            if(Character.isWhitespace(ch)){
                cleanString.append('_');
            }else if(ch == '-'){
                bandera = true;
            }else if(bandera){
                cleanString.append(Character.toUpperCase(ch));
                bandera = false;
            }else if(Character.isDigit(ch)){
                for (int i = 0; i < digits.length; i++) {
                    if (digits[i] == ch) {
                        cleanString.append(letras[i]);
                        break;
                    }
                }
            }else if(Character.isLetter(ch)){
                cleanString.append(ch);
            }
        }
        return cleanString.toString();
    }
}
