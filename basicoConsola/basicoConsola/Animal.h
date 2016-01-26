//
//  Animal.h
//  basicoConsola
//
//  Created by Claudio Yacarini on 25/01/16.
//  Copyright © 2016 Claudio Yacarini. All rights reserved.
//
//  ---> COCOA CLASS --> SUB CLASS NSOBJECT

#import <Foundation/Foundation.h>

//@interface NSObject (Animal)
@interface Animal : NSObject

// Declaración de métodos y atributos
@property NSString *nombre;
@property NSString *comidaFavorita;
@property NSString *sonido;

@property float peso;

// Custom init (debe llevar prefijo init)
-(instancetype) initConNombre: (NSString *) nombreDefault;

// Símbolo "-" indica que es accesible desde un objeto de la clase, el símbolo "+" indica que no lo es
-(void) getInfo;
-(float) pesoEnKg: (float) pesoEnLbs;
-(NSString *) hablame: (NSString *) mi_nombre;
-(int)  getSum: (int) num1
  siguienteNum: (int) num2;

@end
