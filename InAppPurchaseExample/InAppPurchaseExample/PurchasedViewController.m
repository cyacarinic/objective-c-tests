//
//  PurchasedViewController.m
//  InAppPurchaseExample
//
//  Created by Claudio Yacarini on 27/01/16.
//  Copyright © 2016 Claudio Yacarini. All rights reserved.
//

#import "PurchasedViewController.h"

@interface PurchasedViewController ()

@end

@implementation PurchasedViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)GoBack:(id)sender {
}

- (IBAction)BuyProduct:(id)sender {
}

- (IBAction)Restore:(id)sender {
}


- (void) getProductID:(UIViewController *)viewController {
    NSLog(@"estas en get product id");
}
@end
