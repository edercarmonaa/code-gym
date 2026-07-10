//
//  Triangulo.m
//  Polygon
//
//  Created by Eder Carmona Armijo on 09/07/26.
//
#import "Triangulo.h"
@implementation Triangulo
- (instancetype)initWithBase:(double)base altura:(double)altura {
    self = [super init];
    if (self) {
        _base = base;
        _altura = altura;
    }
    return self;
}

- (double)area {
    return (self.base * self.altura) / 2;
}
@end
