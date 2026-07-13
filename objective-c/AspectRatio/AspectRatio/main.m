//
//  main.m
//  AspectRatio
//
//  Created by Eder Carmona Armijo on 09/07/26.
//

#import <Foundation/Foundation.h>

void descargarYGuardarImagen(NSString *urlString, NSString *rutaDestino) {
    NSURL *url = [NSURL URLWithString:urlString];
    if (!url) return;

    NSLog(@"Iniciando descarga...");
    dispatch_semaphore_t semaphore = dispatch_semaphore_create(0);
    NSURLSessionConfiguration *config = [NSURLSessionConfiguration ephemeralSessionConfiguration];

    // 2. Crear una sesión propia con esa configuración
    NSURLSession *session = [NSURLSession sessionWithConfiguration:config];

    // 3. Usar tu sesión en lugar de la compartida
    NSURLSessionDataTask *task = [session dataTaskWithURL:url
                                        completionHandler:^(NSData *data, NSURLResponse *response, NSError *error) {
        
        NSHTTPURLResponse *httpResponse = (NSHTTPURLResponse *)response;
        
        if (!error && data && httpResponse.statusCode == 200) {
            BOOL exito = [data writeToFile:rutaDestino atomically:YES];
            
            if (exito) {
                NSLog(@"✅ Imagen guardada exitosamente en: %@", rutaDestino);
            } else {
                NSLog(@"❌ Error: No se pudo escribir el archivo. Verifica los permisos de la ruta.");
            }
        } else {
            NSLog(@"❌ Error al descargar. Código HTTP: %ld. Detalles: %@", (long)httpResponse.statusCode, error.localizedDescription);
        }
        dispatch_semaphore_signal(semaphore);
    }];

    [task resume];
    dispatch_semaphore_wait(semaphore, DISPATCH_TIME_FOREVER);
}

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSString *urlPrueba = @"https://raw.githubusercontent.com/mouredev/mouredev/master/mouredev_github_profile.png";
        NSString *rutaGuardado = @"imagen_descargada.png";
        
        descargarYGuardarImagen(urlPrueba, rutaGuardado);
    }
    return 0;
}
