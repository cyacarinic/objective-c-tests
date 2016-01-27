//
//  PurchasedViewController.m
//  IAPExample
//
//  Created by Claudio Yacarini on 26/01/16.
//  Copyright © 2016 Claudio Yacarini. All rights reserved.
//

#import "PurchasedViewController.h"
#import "ViewController.h"

@interface PurchasedViewController()

@property (strong, nonatomic) ViewController *homeViewController;

@end

@implementation PurchasedViewController

- (id) initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if(self){
        // custom initialization
    }
    return self;
}

- (void) viewDidLoad {
    [super viewDidLoad];
    _buyButton.enabled = NO;
}

- (void) didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // wp
}

- (IBAction)goBack:(id)sender {
    [self dismissViewControllerAnimated:YES completion:NULL];
}

- (IBAction)buyProduct:(id)sender {
    SKPayment *payment = [SKPayment paymentWithProduct:_product];
    [[SKPaymentQueue defaultQueue] addPayment:payment];
}

- (IBAction)restore:(id)sender {
    [[SKPaymentQueue defaultQueue] addTransactionObserver:self];
    [[SKPaymentQueue defaultQueue] restoreCompletedTransactions];
}

- (void) paymentQueueRestoreCompletedTransactionsFinished:(SKPaymentQueue *)queue {
    [self unlockPurchase];
}


- (void) getProductID:(ViewController *)viewController {
    _homeViewController = viewController;
    if([SKPaymentQueue canMakePayments]){
        SKProductsRequest *request = [[SKProductsRequest alloc] initWithProductIdentifiers:[NSSet setWithObject:self.productID]];
        request.delegate = self;
        [request start];
    } else {
         _productDescription.text = @"No se puede comprar el item. Activar IAP en su configuración.";
    }
}

#pragma mark _
#pragma mark SKProductsRequestDelegate

-(void) productsRequest:(SKProductsRequest *)request didReceiveResponse:(SKProductsResponse *)response {
    NSArray *products = response.products;
    if(products !=0){
        _product = products[0];
        _buyButton.enabled = YES;
        _productTitle.text = _product.localizedTitle;
        _productDescription.text = _product.localizedDescription;
    }else{
        _productTitle.text = @"Producto no hallado";
    }
    
    products = response.invalidProductIdentifiers;
    for(SKProduct *product in products){
        NSLog(@"Producto '%@' no hallado", product);
    }
}

- (void) paymentQueue:(SKPaymentQueue  *)queue updatedTransactions:(NSArray<SKPaymentTransaction *> *)transactions {
    for (SKPaymentTransaction *transaction in transactions) {
        switch (transaction.transactionState) {
            case SKPaymentTransactionStatePurchased:
                [self unlockPurchase];
                [[SKPaymentQueue defaultQueue] finishTransaction:transaction];
                break;
                
            case SKPaymentTransactionStateFailed:
                NSLog(@"Error al completar la transacción");
                [[SKPaymentQueue defaultQueue] finishTransaction:transaction];
                break;
                
            default:
                break;
        }
    }
}

-(void) unlockPurchase {
    _buyButton.enabled = NO;
    [_buyButton setTitle:@"Purchasedddd" forState:UIControlStateDisabled];
    [_homeViewController purchased];
}



@end














