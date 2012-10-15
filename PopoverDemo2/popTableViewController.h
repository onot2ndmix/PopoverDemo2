//
//  popTableViewController.h
//  PopoverDemo2
//
//  Created by onoT on 2012/10/15.
//  Copyright (c) 2012年 onoT. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface popTableViewController : UITableViewController
{
    NSMutableArray *_popItems;
}
@property(nonatomic, retain)NSMutableArray *popItems;

@end
