//
//  Ejercicios.m
//  code-gym
//
//  Created by Eder Carmona Armijo on 28/05/26.
//
#import "Ejercicios.h"

@implementation Ejercicio001

+ (void)ejecutar {
    for (int i = 1; i <= 100; i++) {
        BOOL esMultiploDeTres = i % 3 == 0;
        BOOL esMultiploDeCinco = i % 5 == 0;
        if ( esMultiploDeTres && esMultiploDeCinco){
            NSLog(@"fizzbuzz");
        }else if (esMultiploDeTres) {
            NSLog(@"fizz");
        } else if (esMultiploDeCinco) {
            NSLog(@"buzz");
        } else {
            NSLog(@"%d", i);
        }
    }
}

@end
