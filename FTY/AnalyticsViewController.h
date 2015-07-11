//
//  AnalyticsViewController.h
//  FTY
//
//  Created by XiaoYao on 7/10/15.
//  Copyright (c) 2015 XiaoYao. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AnalyticsViewController : UIViewController <UITableViewDataSource, UITableViewDelegate>

@property (weak, nonatomic) IBOutlet UITableView *tableView;

@property (weak, nonatomic) IBOutlet UIButton *accountButton;
@property (weak, nonatomic) IBOutlet UIButton *campaignButton;
@property (weak, nonatomic) IBOutlet UIButton *analyticsButton;


@end
