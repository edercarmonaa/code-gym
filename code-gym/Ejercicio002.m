//
//  Ejercicio002.m
//  code-gym
//
//  Created by Eder Carmona Armijo on 28/05/26.
//

#import <Foundation/Foundation.h>
#import "Ejercicios.h"

@implementation Ejercicio002
BOOL esAnagrama(NSString *palabra1, NSString *palabra2){
    NSUInteger longitud1 = [palabra1 length];
    NSUInteger longitud2 = [palabra2 length];
    if(longitud1== longitud2){
        return(true);
    }else{
        return (false);
    }
}

+ (void)ejecutar {
    BOOL resultado = esAnagrama(@"eder", @"rede");
    NSLog(@"%d", resultado);
}

@end
