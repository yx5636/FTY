//
//  AccountViewController.m
//  FTY
//
//  Created by XiaoYao on 7/10/15.
//  Copyright (c) 2015 XiaoYao. All rights reserved.
//

#import "AccountViewController.h"
#import "UIUtils.h"
#import "Models.h"

@interface AccountViewController ()

@end

@implementation AccountViewController

#define ACCOUNT_BUTTON_TAG 0
#define CAMPAIGN_BUTTON_TAG 1
#define ANALYTICS_BUTTON_TAG 2

#define PUSH_NOTIFICATION_CELL 1

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.tableView.delegate = self;
    self.tableView.dataSource = self;
    self.tableView.opaque = NO;
    [UIUtils customizeTabBarButton:self.accountButton];
    [UIUtils customizeTabBarButton:self.campaignButton];
    [UIUtils customizeTabBarButton:self.analyticsButton];
    [self.campaignButton setTag:CAMPAIGN_BUTTON_TAG];
    [self.analyticsButton setTag:ANALYTICS_BUTTON_TAG];
    [self.campaignButton addTarget:self
                            action:@selector(switchStoryBoard:)
                  forControlEvents:UIControlEventTouchUpInside];
    [self.analyticsButton addTarget:self
                            action:@selector(switchStoryBoard:)
                  forControlEvents:UIControlEventTouchUpInside];
}

- (void)switchStoryBoard:(UIButton *)sender {
    NSString *storyBoard = [Models mainViewNamesArray][sender.tag];
    NSString *identifier = [Models mainViewControllerNamesArray][sender.tag];
    UIViewController *viewController = [UIUtils jumpToStoryBoard:storyBoard
                                withIdentifier:identifier];
    NSLog(@"storyboard = %@, identifier = %@", storyBoard, identifier);
    [self.navigationController pushViewController:viewController animated:YES];

}


#pragma mark - Table view data source

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    // Return the number of rows in the section.
    
    return [[Models accountTableCellNamesArray] count];
}

- (void) pushNotification:(id)sender {
    UISwitch* switchControl = sender;
    self.pushNotification = switchControl.on;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString *cellIdentifier = @"AccountCell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier];
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellIdentifier];
    }
    
    cell.textLabel.text = [Models accountTableCellNamesArray][indexPath.row];
    
    switch (indexPath.row) {
        case PUSH_NOTIFICATION_CELL: {
            cell.selectionStyle = UITableViewCellSelectionStyleBlue;
            UISwitch *switchView = [[UISwitch alloc] initWithFrame:CGRectZero];
            cell.accessoryView = switchView;
            [switchView setOn:YES animated:YES];
            [switchView addTarget:self
                           action:@selector(pushNotification:)
                 forControlEvents:UIControlEventValueChanged];
            break;
        }
        default:
            break;
    }
    
    return cell;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
}

@end


