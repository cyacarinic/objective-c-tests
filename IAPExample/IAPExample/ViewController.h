//
//  ViewController.h
//  IAPExample
//
//  Created by Claudio Yacarini on 26/01/16.
//  Copyright © 2016 Claudio Yacarini. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <StoreKit/StoreKit.h>
#import "PurchasedViewController.h"

@interface ViewController : UIViewController {
    IBOutlet UILabel *label;
}
- (IBAction)purchaseItem:(id)sender;

@property (strong, nonatomic) PurchasedViewController *purchaseController;
-(void) purchased;

@end

