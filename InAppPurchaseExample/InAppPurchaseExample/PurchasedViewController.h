//
//  PurchasedViewController.h
//  InAppPurchaseExample
//
//  Created by Claudio Yacarini on 27/01/16.
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


- (IBAction)GoBack:(id)sender;
- (IBAction)BuyProduct:(id)sender;
- (IBAction)Restore:(id)sender;


- (void) getProductID:(UIViewController *) viewController;


@end
