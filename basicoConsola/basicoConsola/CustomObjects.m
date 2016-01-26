//
//  CustomObjects.m
//  basicoConsola
//
//  Created by Claudio Yacarini on 25/01/16.
//  Copyright © 2016 Claudio Yacarini. All rights reserved.
//
//  ---> OBJECTIVE C CLASS --> FILE TYPE :: EMPTY FILE

#import <Foundation/Foundation.h>
#import "Animal.h"
#import "Koala.h"
#import "Animal+Exam.h"
#import "Perritu.h"

int main(int argc, const char * argv[]){
    @autoreleasepool {
        
        Animal *dog = [[Animal alloc] init];
        [dog getInfo];
        NSLog(@"The dog's name is %@", [dog nombre]);
        [dog setNombre:@"Byron =)"];
        NSLog(@"Now, the dog's name is %@", [dog nombre]);
        
        
        Animal *cat = [[Animal alloc] initConNombre:@"Warmi :v"];
        [cat getInfo];
        
        NSLog(@"The cat's name is %@", cat.nombre);
        NSLog(@"180 Lbs son %.2f Kg", [dog pesoEnKg:180]);
        NSLog(@"3 + 5 = %d", [dog getSum:3 siguienteNum:5]);
        NSLog(@"%@", [dog hablame:@"Claudio"]);
        
        Koala *ursa = [[Koala alloc] initConNombre:@"Ursa"];
        NSLog(@"%@", [ursa hablame:@"Claudio"]);
        
        
        NSLog(@"Recibiió %@ sus vacunas? : %hhd", ursa.nombre, [ursa revisionDelVet]);
        [ursa vacunarse];
        [ursa getInfo];
        
        // Protocol
        [ursa looksCute];
        [ursa performTrick];
        
        // Función anónima
        float (^getArea) (float largo, float ancho);
        getArea = ^float (float largo, float ancho){
            return largo*ancho;
        };
        NSLog(@"El área de 5 de largo por 30 de ancho es %.2f", getArea(5, 30));
        
        // enums
        enum Valoracion {
            poor = 1,
            good = 3,
            great = 5
        };
        enum Valoracion valoracionGotham = great;
        NSLog(@"La votación para Gotham es :: %u", valoracionGotham);
        
        Perritu *hano = [[Perritu alloc] initConNombre:@"Dogi Guau!"];
        NSArray *animals = [[NSArray alloc] initWithObjects:dog, ursa, hano, nil];
        id object1 = [animals objectAtIndex:0];
        id object2 = [animals objectAtIndex:1];
        id object3 = [animals objectAtIndex:2];
        [object1 hacerRuido];
        [object2 hacerRuido];
        [object3 hacerRuido];
    }
    return 0;
}











