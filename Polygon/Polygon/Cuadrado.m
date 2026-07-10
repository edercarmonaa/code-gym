//
//  Cuadrado.m
//  Polygon
//
//  Created by Eder Carmona Armijo on 09/07/26.
//

#import "Cuadrado.h"
@implementation Cuadrado
- (instancetype)initWithLado:(double)lado {
    self = [super init];
    if (self) {
        _lado = lado;
    }
    return self;
}

- (double)area {
    return self.lado * self.lado;
}
@end
