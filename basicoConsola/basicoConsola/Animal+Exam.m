//
//  Animal+Exam.m
//  basicoConsola
//
//  Created by Claudio Yacarini on 26/01/16.
//  Copyright © 2016 Claudio Yacarini. All rights reserved.
//
//  ---> OBJECTIVE C CLASS --> FILE TYPE :: CATEGORY

#import "Animal+Exam.h"

@implementation Animal (Exam)

- (BOOL) revisionDelVet {
    return true;
}

- (void) vacunarse {
    NSLog(@"%@ recibio sus vacunas.", [self nombre]);
}

@end
