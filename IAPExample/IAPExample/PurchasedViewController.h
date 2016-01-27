//
//  PurchasedViewController.h
//  IAPExample
//
//  Created by Claudio Yacarini on 26/01/16.
//  Copyright © 2016 Claudio Yacarini. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <StoreKit/StoreKit.h>

@interface PurchasedViewController : UIViewController <SKPaymentTransactionObserver, SKProductsRequestDelegate> {
    
}
@property (strong, nonatomic) SKProduct *product;
@property (strong, nonatomic) NSString *productID;

@property (strong, nonatomic) IBOutlet UILabel *productTitle;
@property (strong, nonatomic) IBOutlet UITextView *productDescription;
@property (strong, nonatomic) IBOutlet UIButton *buyButton;


- (IBAction)goBack:(id)sender;
- (IBAction)buyProduct:(id)sender;
- (IBAction)restore:(id)sender;

- (void) getProductID: (UIViewController *)viewController;

@end
