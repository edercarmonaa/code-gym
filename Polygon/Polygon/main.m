//
//  main.m
//  Polygon
//
//  Created by Eder Carmona Armijo on 08/07/26.
//
#import <Foundation/Foundation.h>
#import "Triangulo.h"
#import "Rectangulo.h"
#import "Cuadrado.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        Triangulo *miTriangulo = [[Triangulo alloc] initWithBase:10.0 altura:5.0];
        Rectangulo *miRectangulo = [[Rectangulo alloc] initWithAncho:4.0 alto:8.0];
        Cuadrado *miCuadrado = [[Cuadrado alloc] initWithLado:6.0];
        
        // ¡Llamamos al método heredado!
        // Cada uno calculará su propia área matemáticamente y la imprimirá.
        [miTriangulo imprimirArea];
        [miRectangulo imprimirArea];
        [miCuadrado imprimirArea];
        
    }
    return 0;
}
