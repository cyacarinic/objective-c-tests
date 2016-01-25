//
//  Cadenas.m
//  basicoConsola
//
//  Created by Claudio Yacarini on 25/01/16.
//  Copyright © 2016 Claudio Yacarini. All rights reserved.
//

#import <Foundation/Foundation.h>

int mein(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSString *saludo = @"Hello, World!";
        int edad = 26;
        NSLog(@"%@ -- %i", saludo, edad);
        
        NSString *algo = nil;
        NSLog(@"Posición de NIL :: %p", algo);
        
        NSString *frase = @"dogs have masters, while cats have staff";
        NSLog(@"Frase :: %@, Longitud :: %i", frase, (int)[frase length]);
        
        NSLog(@"Caracter de la posición '5' %c", [frase characterAtIndex:5]);
        
        char *nombre = "Claudio";
        NSString *mi_nombre = [NSString stringWithFormat:@"- %s", nombre];
        NSLog(@"Mi nombre %@", mi_nombre);
        
        BOOL isStringEqual = [frase isEqualToString:mi_nombre];
        printf("Las cadenas son iguales? :: %d\n", isStringEqual);
        
        const char *uCString = [[mi_nombre uppercaseString] UTF8String]; // Convierte de NSString a String simple
        printf("%s\n", uCString);
        
        
        NSString *fraseCompleta = [frase stringByAppendingString:mi_nombre];
        NSRange searchResult = [fraseCompleta rangeOfString:@"Claudio"];
        if(searchResult.location == NSNotFound){
            NSLog(@"Cadena no hallada");
        }else{
            NSLog(@"La cadena está en la posición %lu y es de longitud %lu.", searchResult.location, searchResult.length);
        }

        NSRange rango = NSMakeRange(42, 7);
        const char *nuevaFrase = [[fraseCompleta stringByReplacingCharactersInRange:rango withString:@"Ursa"]UTF8String];
        printf("%s\n", nuevaFrase);
        
        NSMutableString *listaDeGrocerias = [NSMutableString stringWithCapacity:50];
        [listaDeGrocerias appendFormat:@"%s", "Papa, Platano, Pasta"];
        NSLog(@"Lista de grocerías :: %@", listaDeGrocerias);
        [listaDeGrocerias deleteCharactersInRange:NSMakeRange(0, 6)];
        NSLog(@"Lista de grocerías :: %@", listaDeGrocerias);
        [listaDeGrocerias insertString:@", Fresa" atIndex:14];
        NSLog(@"Lista de grocerías :: %@", listaDeGrocerias);
        [listaDeGrocerias replaceCharactersInRange:NSMakeRange(16, 5) withString:@"Naranjas"];
        NSLog(@"Lista de grocerías :: %@", listaDeGrocerias);
    }
    return 0;
}
