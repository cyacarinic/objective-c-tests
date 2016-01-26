//
//  Animal.m
//  basicoConsola
//
//  Created by Claudio Yacarini on 25/01/16.
//  Copyright © 2016 Claudio Yacarini. All rights reserved.
//
//  ---> COCOA CLASS --> SUB CLASS NSOBJECT

#import "Animal.h"
#import "Animal+Vet.h"

//@implementation Animal: NSObject
@implementation Animal

// Implementación de métodos y atributos (por default)
- (instancetype)init {
    self = [super init];
    if (self) {
        self.nombre = @"Sin nombre";
    }
    return self;
}

// nuestro custom init
- (instancetype) initConNombre:(NSString *)nombreDefault{
    self = [super init];
    if (self) {
        self.nombre = nombreDefault;
    }
    return self;
}


- (void) getInfo {
    [self obtenerResultadoExamen];
}


- (float) pesoEnKg:(float)pesoEnLbs {
    return pesoEnLbs * 0.4535;
}


- (int) getSum:(int)num1 siguienteNum:(int)num2 {
    return num1 + num2;
}

- (NSString *)hablame:(NSString *)mi_nombre {
    NSString *response = [NSString stringWithFormat:@"Hola %@", mi_nombre];
    return response; 
}

// Método polimorfismo
-(void) hacerRuido {
    NSLog(@"Grrrrrrr");
}


@end



















