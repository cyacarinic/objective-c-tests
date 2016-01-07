//
//  ViewController.h
//  Purchaser
//
//  Created by Claudio Yacarini on 5/01/16.
//  Copyright © 2016 Claudio Yacarini. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <StoreKit/StoreKit.h>
#import <AVFoundation/AVFoundation.h>

@interface ViewController : UIViewController <SKProductsRequestDelegate, SKPaymentTransactionObserver>{
    NSTimer *timer;
    int countInt ;
    
    AVAudioPlayer *player;
}

// Para scroller
@property (strong, nonatomic) IBOutlet UILabel *Label;
@property (strong, nonatomic) IBOutlet UILabel *LabelMsg;

@property (strong, nonatomic) IBOutlet UIView *pagina1;
@property (strong, nonatomic) IBOutlet UIView *pagina2;

- (IBAction)StartCounter:(id)sender;

- (IBAction)StopCounter:(id)sender;

// Para InApp Purchase

- (IBAction)purchase;
- (IBAction)play;
- (IBAction)stop;

- (void)downloadFromURL:(NSURL *)url;

@end

