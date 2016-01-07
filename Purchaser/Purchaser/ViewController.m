//
//  ViewController.m
//  Purchaser
//
//  Created by Claudio Yacarini on 5/01/16.
//  Copyright © 2016 Claudio Yacarini. All rights reserved.
//

#import "ViewController.h"

@interface ViewController () <UIScrollViewDelegate>
{
    IBOutlet UIScrollView *scroller;
}
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
//    :::: IMAGE SCROLLER ::::
//    scroller.pagingEnabled = YES;
//    scroller.showsHorizontalScrollIndicator = YES;
//    scroller.delegate = self;
    
//    UIView *p1 = [self.pagina1 initWithFrame:CGRectMake(0, 0, self.pagina1.frame.size.width, self.pagina1.frame.size.height)];
//    UIView *p2 = [self.pagina2 initWithFrame:CGRectMake(scroller.frame.size.width, 0, self.pagina2.frame.size.width, self.pagina2.frame.size.height)];
    
//    UIImageView *p1 = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, scroller.frame.size.width, 702)];
//    p1.image = [UIImage imageNamed:@"A.png"];
//    UIImageView *p2 = [[UIImageView alloc] initWithFrame:CGRectMake(scroller.frame.size.width, 0, scroller.frame.size.width, 702)];
//    p2.image = nil;
//    UIImageView *p3 = [[UIImageView alloc] initWithFrame:CGRectMake(scroller.frame.size.width*2, 0, scroller.frame.size.width, 702)];
//    p3.image = [UIImage imageNamed:@"B.png"];
//    
//    [scroller addSubview:p1];
//    [scroller addSubview:p2];
//    [scroller addSubview:p3];
//    scroller.contentSize = CGSizeMake(scroller.frame.size.width*3, scroller.frame.size.height);
    
    
//    :::: IAP PURCHASER ::::
    if([SKPaymentQueue canMakePayments]){
        NSLog(@"'Control parental' está desactivado");
        SKProductsRequest *productsRequest = [[SKProductsRequest alloc] initWithProductIdentifiers:[NSSet setWithObject:@"com.simplesdk.song"]];
        productsRequest.delegate = self;
        [productsRequest start];
    }else{
        NSLog(@"'Control parental' está activado");
    }
    
}


//  :::: COUNTER ::::
- (IBAction)StartCounter:(id)sender {
    countInt = 0;
    self.Label.text = [NSString stringWithFormat:@"%i", countInt];
    
    [timer invalidate];
    self.LabelMsg.text = @"";
    timer = [NSTimer scheduledTimerWithTimeInterval:1.0 target:self selector:@selector(Counter) userInfo:nil repeats:YES];
}
- (IBAction)StopCounter:(id)sender {
    [timer invalidate];
}
-(void)Counter{
    countInt += 1;
    self.Label.text = [NSString stringWithFormat:@"%i", countInt];
    
    if(countInt == 10){
        [timer invalidate];
        self.LabelMsg.text = @"Llegaste al tope.";
    }
    if(countInt == 5){
        self.LabelMsg.text = @"Se acaba el tiempo...";
    }

}


//  :::: IAP PURCHASER ::::
- (IBAction)purchase{
    NSLog(@"Comprar...");
    SKPayment *payment = [SKPayment paymentWithProductIdentifier:@"com.simplesdk.song"];
    [[SKPaymentQueue defaultQueue] addTransactionObserver:self];
    [[SKPaymentQueue defaultQueue] addPayment:payment];
    
}
- (IBAction)play{
    NSArray *paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
    NSString *documentsDirectory = [paths objectAtIndex:0];
    NSString *file = [NSString stringWithFormat:@"%@/Song.mp3",documentsDirectory];
    
    player = [[AVAudioPlayer alloc] initWithContentsOfURL:[NSURL fileURLWithPath:(NSString *)file] error:nil];
    [player play];
    NSLog(@"Sonar...");
}
- (IBAction)stop{
    [player stop];
    NSLog(@"Detener...");
}

- (void)downloadFromURL:(NSURL *)url{
    NSData *data = [NSData dataWithContentsOfURL:url];
    NSArray *paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
    NSString *documentsDirectory = [paths objectAtIndex:0];
    NSString *file = [NSString stringWithFormat:@"%@/Song.mp3",documentsDirectory];
    
    [data writeToFile:file atomically:YES];
}


- (void)productsRequest:(SKProductsRequest *)request didReceiveResponse:(SKProductsResponse *)response{
    SKProduct *validProduct = nil;
    int count = [response.products count];
    if(count > 0){
        validProduct = [response.products objectAtIndex:0];
    } else if (!validProduct){
        NSLog(@"No Products Available");
        
    }
}

-(void)paymentQueue:(SKPaymentQueue *)queue updatedTransactions:(NSArray<SKPaymentTransaction *> *)transactions{
    for (SKPaymentTransaction *transaction in transactions){
        NSLog(@"--> %li", (long)transaction.transactionState);
        switch (transaction.transactionState) {
            case SKPaymentTransactionStatePurchasing:
                NSLog(@"Comprando...");
                break;
            case SKPaymentTransactionStatePurchased:
                [self downloadFromURL:[NSURL URLWithString:@"http://ecsmedia.pl/mp3/20787229-m24093614.mp3"]];
//                [self downloadFromURL:[NSURL URLWithString:@"http://iphonedevnation.com/tutorials/ForestGreen.mp3"]];
                NSLog(@"Listo...");
                [[SKPaymentQueue defaultQueue] finishTransaction:transaction];
                break;
                
            case SKPaymentTransactionStateRestored:
                NSLog(@"Restored...");
                [[SKPaymentQueue defaultQueue] finishTransaction:transaction];
                break;
            
            case SKPaymentTransactionStateDeferred:
                if(transaction.error.code != SKErrorPaymentCancelled){
                    NSLog(@"An error encountered.");
                }
                NSLog(@"Lol...");
                [[SKPaymentQueue defaultQueue] finishTransaction:transaction];
                break;
                
            default:
                NSLog(@"Default.");
                break;
        }
    }
}


//  :::: OTROS ::::
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
