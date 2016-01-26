//
//  Koala.m
//  basicoConsola
//
//  Created by Claudio Yacarini on 26/01/16.
//  Copyright © 2016 Claudio Yacarini. All rights reserved.
//
//  ---> COCOA CLASS --> SUB CLASS NSOBJECT

#import "Koala.h"

@implementation Koala

- (NSString *) hablame:(NSString *)mi_nombre {
    NSString *response = [NSString stringWithFormat:@"Hola %@ - By %@.", mi_nombre, self.nombre];
    return response;
}

- (void) hacerTruco {
    NSLog(@"%@ hizo un Rampage :v", [self nombre]);
}

- (void) hacerRuido {
    NSLog(@"%@ dijo 'GGWP'", self.nombre);
}


@end
