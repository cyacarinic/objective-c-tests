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
        
        
        
    }
    return 0;
}