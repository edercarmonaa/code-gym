import java.util.*;
import java.lang.*;
import java.io.*;
public class CuadradosDiabolicosEsotericos {

    static java.util.Scanner in;

    public static boolean esConsecutivoUnoANCuadrado(int[] plano) {
        for (int i = 0; i < plano.length; i++) {
            if (plano[i] != (i + 1)) {
                return false; 
            }
        }
        return true; 
    }
    
    public static boolean casoDePrueba() {
        int tamano = in.nextInt(); 
        int[] filas = new int[tamano];
        int[] columnas = new int[tamano];
        int[][] matriz = new int[tamano][tamano];
        int diag1 = 0;
        int diag2 = 0;
        int[] plano = new int[tamano * tamano];
        int k =0;
        boolean bandera = true;
        boolean consecutivo = false;
        boolean[] visto = new boolean[tamano * tamano + 1];
        if (tamano == 0) return false;
        for (int i = 0; i < tamano; i++) {
            for (int j = 0; j < tamano; j++) {
                matriz[i][j] = in.nextInt();
                filas[i] += matriz[i][j];
                columnas[j] += matriz[i][j];
                diag1 += (i == j)? matriz[i][j]: 0;
                plano[k] = matriz[i][j];
                k++;
            }
             diag2 += matriz[i][tamano -1 -i];
        }
        if (tamano < 2 || tamano > 1024){
            System.out.println("NO");
            return true;
        }
        if (diag1 == diag2 ){
            for (int i = 1; i < tamano; i++) {
                 if (filas[i] != filas[0]) {
                    bandera = false;
                    break; 
                }           
                if (columnas[i] != columnas[0]) {
                    bandera = false;
                    break; 
                }           
            }   
        }else{
            bandera = false;
        }
        if (bandera && diag1 == filas[0] && filas[0] == columnas[0] ){
            int esquinas = 0;
            int centros = 0;
            int centro = 0;
            Arrays.sort(plano);
            if (esConsecutivoUnoANCuadrado(plano)){
                 esquinas = matriz[0][0] + matriz[0][tamano - 1] + matriz[tamano -1 ][0] + matriz[tamano-1][tamano - 1];
                if( tamano % 2 != 0){
                    centros = matriz[0][tamano /2]
                        +matriz[tamano /2][0]
                        +matriz[tamano /2][tamano -1]
                        +matriz[tamano -1][tamano /2];
                    centro = matriz[tamano /2][tamano /2] * 4;
                }else{
                    centro = matriz[tamano / 2][tamano /2]
                            + matriz[tamano / 2][(tamano /2)-1]
                            + matriz[(tamano / 2)-1][tamano /2]
                            + matriz[(tamano / 2)-1][(tamano / 2)-1];
                    centros =( matriz[0][tamano /2]
                            + matriz[0][(tamano / 2)-1]
                            + matriz[tamano /2][0]
                            + matriz[(tamano / 2)-1][0]
                            + matriz[tamano-1][tamano /2]
                            + matriz[tamano-1][(tamano /2)-1]
                            + matriz[tamano / 2][tamano-1]
                            + matriz[(tamano / 2)-1][tamano-1])/2;
                }
                if(esquinas == centros && centros == centro ){
                    System.out.println("ESOTERICO");
                }else{
                    System.out.println("DIABOLICO");    
                }   
            }else{
                System.out.println("DIABOLICO");
            }
        }else{
            System.out.println("NO");
        }
        return true;
    }

    public static void main(String[] args) {
        in = new java.util.Scanner(System.in);
        while (casoDePrueba()) {
        }
    } // main

} // class solution