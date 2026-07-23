import java.util.*;
import java.lang.*;
import java.io.*;

public class CodigoCesar {

    static java.util.Scanner in;
    static char[] alfabeto = "abcdefghijklmnopqrstuvwxyz".toCharArray();
    
    public static int calculaDistancia(char caracter){
        int posicion2 = Arrays.binarySearch(alfabeto, caracter);
        return posicion2 - 15;
    }
    
    public static String descifrar(String frase, int distancia){
        StringBuilder resultado = new StringBuilder(frase);
        char reemplazo = '\u0000';
        for (int i = 1; i < frase.length(); i++) {
            char letra = frase.charAt(i);
            if (Character.toLowerCase(letra) >= 'a' && Character.toLowerCase(letra) <= 'z'){
                int posicionOriginal = Arrays.binarySearch(alfabeto, Character.toLowerCase(letra));
                int nuevaPosicion = (((posicionOriginal - distancia)%26) + 26) % 26;
                reemplazo = (Character.isLowerCase(letra))? alfabeto[nuevaPosicion] : Character.toUpperCase(alfabeto[nuevaPosicion]);
            }else{
                reemplazo = letra;
            }
            
            resultado.setCharAt(i, reemplazo);
        }
        return resultado.substring(1);
    }
    
    public static int cuentaVocales(String descifrado){
         int cuenta = 0;
         for (int i = 0; i < descifrado.length(); i++) {
            char letra = Character.toLowerCase(descifrado.charAt(i));
             if (letra == 'a' || letra == 'e' || letra == 'i' || letra == 'o' || letra == 'u') {
            cuenta++;
        }
        }
        return cuenta;
    }
    
    
    public static boolean casoDePrueba() {
        if (!in.hasNextLine()) return false;
        String frase = in.nextLine();  
        if (frase.isEmpty()) return true;
        char primerChar = Character.toLowerCase(frase.charAt(0));
        if (primerChar < 'a' || primerChar > 'z') return true;
        int distancia = calculaDistancia(primerChar);
        String descifrado = descifrar(frase, distancia);
        if (distancia > 0 && descifrado.equals("FIN"))
            return false;
        else {
            System.out.println(cuentaVocales(descifrado));
            return true;
         }
    } 

    public static void main(String[] args) {
        in = new java.util.Scanner(System.in);
        while (casoDePrueba()) {
        }
    } 
}