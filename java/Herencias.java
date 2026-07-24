import java.util.*;
import java.lang.*;
import java.io.*;

class Herencias
{
	static java.util.Scanner in;
	static int grado = 0;
	static int rectangulos = 0;
	static int[] coeficientes = new int[21];
	static double ancho = 0.0;
	static double areas = 0.0;
	static int numRect = 0;
	static double dif = 0.0;
	
	public static double fx(double ancho){
	    double valor = 0.0; 
	    for (int i =0; i < grado; i ++){
	        valor += coeficientes[i] * Math.pow(ancho, grado - i);
	    }
	    valor+=coeficientes[grado];
	    return valor;
	}
    public static  double  SumaRiemann(){
        numRect = 0;
        areas = 0.0;
        for (int i = 0; i < rectangulos; i ++){
            double actualFx = fx(numRect * ancho);
            areas += (actualFx >= 0) ? ((actualFx > 1) ? 1 * ancho : actualFx * ancho) : 0;
            numRect++;
        }
        return areas;
    }
    public static void Diferencia(double area){
        double abel= 1 - area;
        dif = Math.abs(abel - area);
        if (dif <= 0.001) {
            System.out.println("JUSTO");
            return;
        } else if (abel - area > 0) {
            System.out.println("ABEL");
            return;
        } else {
            System.out.println("CAIN");
            return;
        }
    }
    public static boolean casoDePrueba() {
        
        if (!in.hasNextInt()) return false;
        int lectura = in.nextInt();  
        if (lectura == 20)
            return false;
        else {
            grado = lectura;
            for(int i = 0; i <= grado ; i++){
                coeficientes[i] = in.nextInt();
            }
            rectangulos = in.nextInt();
            ancho = (double) 1 / rectangulos;
            Diferencia(SumaRiemann());        
            return true;
         }
    }

    public static void main(String[] args) {
        in = new java.util.Scanner(System.in);
        while (casoDePrueba()) {
        }
    } // main
}

