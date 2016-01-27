//
//  ViewController.m
//  IAPExample
//
//  Created by Claudio Yacarini on 26/01/16.
//  Copyright © 2016 Claudio Yacarini. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)purchaseItem:(id)sender {
    _purchaseController = [[PurchasedViewController alloc] initWithNibName:nil bundle:nil ];
    _purchaseController.productID = @"pe.rcp.test.iap1";
    [self presentViewController:_purchaseController animated:YES completion:NULL];
    [_purchaseController getProductID:self];
}

-(void) purchased {
    label.text = @"El item fué comprado.";
}

@end
