//
//  Polygon.m
//  Polygon
//
//  Created by Eder Carmona Armijo on 09/07/26.
//

#import "Polygon.h"

@implementation Polygon

- (double)area {
    // La clase base no tiene forma, así que su área es 0
    return 0.0;
}

- (void)imprimirArea {
    NSLog(@"El área de esta figura es: %.2f", [self area]);
}

@end
