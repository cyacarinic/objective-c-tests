//
//  ViewController.h
//  InAppPurchaseExample
//
//  Created by Claudio Yacarini on 27/01/16.
//  Copyright © 2016 Claudio Yacarini. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <StoreKit/StoreKit.h>
#import "PurchasedViewController.h"
#import <iAd/iAd.h>


@interface ViewController : UIViewController <ADBannerViewDelegate> {
    IBOutlet UILabel *Label;
    IBOutlet ADBannerView *adBanner;
}

- (IBAction)purchaseItem:(id)sender;

@property (strong, nonatomic) PurchasedViewController *purchaseController;

-(void) Purchased;


@end

