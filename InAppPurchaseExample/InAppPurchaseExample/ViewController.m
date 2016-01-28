//
//  ViewController.m
//  InAppPurchaseExample
//
//  Created by Claudio Yacarini on 27/01/16.
//  Copyright © 2016 Claudio Yacarini. All rights reserved.
//

#define k_save @"Saveitem"

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Se carga la vista de "ya fue comprado"
    NSUserDefaults *saveApp = [NSUserDefaults standardUserDefaults];
    bool saved = [saveApp boolForKey:k_save];
    if(!saved){
        // Código para compra no guardado
        Label.text = @"No hay compras guardadas.";
    }else{
        // Código para compra YA realizada y guardada
        Label.text = @"El item ya ha sido comprado!! Se cargó la compra guardada. =)";
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)purchaseItem:(id)sender {
    _purchaseController = [[PurchasedViewController alloc] initWithNibName:nil bundle:nil];
    _purchaseController.productID = @"pe.rcp.test.iap1";
    
    // Si ya se compró el item se pre-carga la compra
    [[SKPaymentQueue defaultQueue] addTransactionObserver:_purchaseController];
    
    [self presentViewController:_purchaseController animated:YES completion:NULL];
    [_purchaseController getProductID:self];
}

- (void) Purchased {
    Label.text = @"El item ha sido comprado!! =)";
    
    NSUserDefaults *saveApp = [NSUserDefaults standardUserDefaults];
    [saveApp setBool:TRUE forKey:k_save];
    [saveApp synchronize];
}

@end
