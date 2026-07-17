import java.util.*;
public class Kaprekar { 
    static java.util.Scanner in;

    public static void casoDePrueba() {
      
       int numero = in.nextInt();
        int Kaprekar = 0;
        if (numero % 1111 != 0 ){
          while (numero != 6174) {
            int[] digitos = new int[4];
            digitos[0]= (numero / 1000) % 10 ;
            digitos[1]= (numero / 100) % 10 ;
            digitos[2]= (numero / 10) % 10 ;
            digitos[3]= numero  % 10;
            Arrays.sort(digitos);
            int numeroDesc = (digitos[3] * 1000) + (digitos[2] * 100) + (digitos[1] * 10) + digitos[0];
            int numeroAsc = (digitos[0] * 1000) + (digitos[1] * 100) + (digitos[2] * 10) + digitos[3];
            numero = numeroDesc - numeroAsc;
            Kaprekar++;
            }   
        }else{
            Kaprekar = 8;
        }
        System.out.println(Kaprekar);

    } // casoDePrueba

    public static void main(String[] args) {

        in = new java.util.Scanner(System.in);

        int numCasos = in.nextInt();
        for (int i = 0; i < numCasos; i++)
            casoDePrueba();
    } // main
} // class Kaprekar