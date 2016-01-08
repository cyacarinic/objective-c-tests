//
//  TableViewController.h
//  FeedReader
//
//  Created by Claudio Yacarini on 8/01/16.
//  Copyright © 2016 Claudio Yacarini. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TableViewController : UITableViewController <NSXMLParserDelegate>

@property (strong, nonatomic) IBOutlet UITableView *tableView;

@end
