//
//  Ejercicio003.m
//  code-gym
//
//  Created by Eder Carmona Armijo on 15/06/26.
//

#import "Ejercicios.h"

@implementation Ejercicio003

+ (void)ejecutar {
    NSUInteger inicial = 0;
    NSUInteger segundo = 1;
    NSUInteger fibo = inicial;
    NSLog(@"%ld", fibo);
    for (int i = 1; i < 50; i++) {
        inicial = segundo;
        segundo = fibo;
        fibo = inicial + segundo;
        NSLog(@"%ld", fibo);
    }
}
@end

