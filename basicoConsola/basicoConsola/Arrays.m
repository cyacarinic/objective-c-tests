//
//  Arrays.m
//  basicoConsola
//
//  Created by Claudio Yacarini on 25/01/16.
//  Copyright © 2016 Claudio Yacarini. All rights reserved.
//

#import <Foundation/Foundation.h>

int mein2(int argc, const char * argv[]) {
    @autoreleasepool {
               
        NSArray *officeSupplies = @[@"Lápiz", @"Papel", @"Tijera"];
        NSLog(@"Primer item :: %@", officeSupplies[0]);
        NSLog(@"TODOS :: %@", officeSupplies);
        NSLog(@"Total items :: %d", (int)[officeSupplies count]);
        
        BOOL contieneItem = [officeSupplies containsObject:@"Borrador"];
        NSLog(@"Tienes Borradores? :: %d", contieneItem);
        NSLog(@"Posición de papel :: %lu", [officeSupplies indexOfObject:@"Papel"]);
        
        NSMutableArray *heroes = [NSMutableArray arrayWithCapacity:5];
        [heroes addObject:@"Batman"];
        [heroes addObject:@"Flash"];
        [heroes addObject:@"Goku"];
        [heroes addObject:@"Wonder Woman"];
        NSLog(@"Héroes :: %@", heroes);
        
        [heroes insertObject:@"Superman" atIndex:2];
        NSLog(@"Héroes :: %@", heroes);
        
        [heroes removeObjectAtIndex:0];
        [heroes removeObjectIdenticalTo:@"Superman" inRange:NSMakeRange(0, 2)];
        for (int i=0; i<[heroes count]; i++) {
            NSLog(@"%@", heroes[i]);
        }
        
    }
    return 0;
}
