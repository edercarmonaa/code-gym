//
//  Ejercicio004.m
//  code-gym
//
//  Created by Eder Carmona Armijo on 17/06/26.
//

#import "Ejercicios.h"

@implementation Ejercicio004

+ (void)ejecutar {
    for (int primo = 2; primo < 100; primo++) {
        BOOL esprimo = true;
        for(int j = 2; j <= sqrtf(primo); j++){
            if (primo % j == 0){
                esprimo = false;
                break;
            }
        }
        if (esprimo){
            NSLog(@"%i", primo);
        }
        
    }
}
@end
