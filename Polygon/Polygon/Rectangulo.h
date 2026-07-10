//
//  Rectangulo.h
//  Polygon
//
//  Created by Eder Carmona Armijo on 09/07/26.
//

#import "Polygon.h" // Importamos al padre

@interface Rectangulo : Polygon // Hereda de Polygon
@property (nonatomic, assign) double ancho;
@property (nonatomic, assign) double alto;
- (instancetype)initWithAncho:(double)ancho alto:(double)alto;
@end
