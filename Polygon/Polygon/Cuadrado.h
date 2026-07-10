//
//  Cuadrado.h
//  Polygon
//
//  Created by Eder Carmona Armijo on 09/07/26.
//

#import "Polygon.h" // Importamos al padre

@interface Cuadrado : Polygon // Hereda de Polygon
@property (nonatomic, assign) double lado;
- (instancetype)initWithLado:(double)lado;
@end
