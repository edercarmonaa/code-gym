//
//  Rectangulo.m
//  Polygon
//
//  Created by Eder Carmona Armijo on 09/07/26.
//

#import "Rectangulo.h"
@implementation Rectangulo
- (instancetype)initWithAncho:(double)ancho alto:(double)alto {
    self = [super init];
    if (self) {
        _ancho = ancho;
        _alto = alto;
    }
    return self;
}

- (double)area {
    // TODO: Escribe aquí la fórmula matemática usando
    return self.ancho * self.alto;
}
@end
