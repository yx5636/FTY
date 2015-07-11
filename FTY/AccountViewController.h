//
//  AccountViewController.h
//  FTY
//
//  Created by XiaoYao on 7/10/15.
//  Copyright (c) 2015 XiaoYao. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AccountViewController
: UIViewController <UITableViewDelegate, UITableViewDataSource>

@property (weak, nonatomic) IBOutlet UITableView *tableView;
@property (weak, nonatomic) IBOutlet UIButton *campaignButton;
@property (weak, nonatomic) IBOutlet UIButton *analyticsButton;
@property (weak, nonatomic) IBOutlet UIButton *accountButton;


@end
