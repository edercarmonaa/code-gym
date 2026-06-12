//
//  Ejercicio002.m
//  code-gym
//
//  Created by Eder Carmona Armijo on 28/05/26.
//

#import <Foundation/Foundation.h>
#import "Ejercicios.h"

@implementation Ejercicio002
BOOL esAnagrama(NSString *cadena1, NSString *cadena2){
    NSString *cadenaLimpia1 = [cadena1 stringByReplacingOccurrencesOfString:@" " withString:@""];
    NSString *cadenaLimpia2 = [cadena2 stringByReplacingOccurrencesOfString:@" " withString:@""];
    NSUInteger longitud1 = [cadenaLimpia1 length];
    NSUInteger longitud2 = [cadenaLimpia2 length];
    
    NSCountedSet *set1 = [[NSCountedSet alloc] init];
    NSCountedSet *set2 = [[NSCountedSet alloc] init];
    
    if(longitud1 != longitud2){
        return(false);
    }
    
    // Llenar el primer set con los caracteres de cadena1
    for (NSUInteger i = 0; i < longitud1; i++) {
        [set1 addObject:@([cadenaLimpia1 characterAtIndex:i])];
    }
    
    // Llenar el segundo set con los caracteres de cadena2
    for (NSUInteger i = 0; i < longitud2; i++) {
        [set2 addObject:@([cadenaLimpia2 characterAtIndex:i])];
    }
    
    // Comparar si ambos sets tienen los mismos elementos y frecuencias
    return [set1 isEqualToSet:set2];
}

+ (void)ejecutar {
    BOOL resultado = esAnagrama(@"e de r", @"rede");
    NSLog(@"%d", resultado);
}

@end
