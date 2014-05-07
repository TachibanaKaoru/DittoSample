//
//  CommonListViewController.h
//  Ditto
//
//  Created by Tachibana Kaoru on 2014/04/17.
//  Copyright (c) 2014 Toyship.org. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DITTableViewController : UITableViewController

@property (nonatomic,strong)NSString* strField;
@property (nonatomic,strong)NSString* strEndPoint;
@property (nonatomic,strong)NSString* strTitle;
@property (nonatomic,strong)NSString* strSubTitle;
@property (nonatomic,strong)NSArray* items;

@end
