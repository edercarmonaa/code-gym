//
//  Triangulo.h
//  Polygon
//
//  Created by Eder Carmona Armijo on 09/07/26.
//


#import "Polygon.h" // Importamos al padre

@interface Triangulo : Polygon // Hereda de Polygon
@property (nonatomic, assign) double base;
@property (nonatomic, assign) double altura;
- (instancetype)initWithBase:(double)base altura:(double)altura;
@end
