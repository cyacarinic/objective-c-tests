//
//  Koala.h
//  basicoConsola
//
//  Created by Claudio Yacarini on 26/01/16.
//  Copyright © 2016 Claudio Yacarini. All rights reserved.
//
//  ---> COCOA CLASS --> SUB CLASS NSOBJECT

#import "Animal.h"
#import "BeautyContest.h"

@interface Koala : Animal <BeautyContest>

- (NSString *) hablame:(NSString *)mi_nombre;

- (void) hacerTruco;
- (void) hacerRuido;

// No es necesario instanciar los metodos de beautyContest.h

@end
