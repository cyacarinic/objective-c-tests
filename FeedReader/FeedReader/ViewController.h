//
//  ViewController.h
//  FeedReader
//
//  Created by Claudio Yacarini on 8/01/16.
//  Copyright © 2016 Claudio Yacarini. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController {
    IBOutlet UIActivityIndicatorView *ActInd;
    NSTimer *timer;
    
}

@property (copy, nonatomic) NSString *url;
@property (strong, nonatomic) IBOutlet UIWebView *webView;

@end
