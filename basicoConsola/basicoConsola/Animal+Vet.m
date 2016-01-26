//
//  Animal+Vet.m
//  basicoConsola
//
//  Created by Claudio Yacarini on 26/01/16.
//  Copyright © 2016 Claudio Yacarini. All rights reserved.
//

#import "Animal+Vet.h"

@implementation Animal (Vet)

-(void) obtenerResultadoExamen {
    NSLog(@"Los examenes de %@ resultaron OK", self.nombre);
}

@end
