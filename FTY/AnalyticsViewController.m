//
//  AnalyticsViewController.m
//  FTY
//
//  Created by XiaoYao on 7/10/15.
//  Copyright (c) 2015 XiaoYao. All rights reserved.
//

#import "AnalyticsViewController.h"
#import "Models.h"
#import "UIUtils.h"

@interface AnalyticsViewController ()

@end

@implementation AnalyticsViewController

#define ACCOUNT_BUTTON_TAG 0
#define CAMPAIGN_BUTTON_TAG 1
#define ANALYTICS_BUTTON_TAG 2

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.tableView.delegate = self;
    self.tableView.dataSource = self;
    self.tableView.opaque = NO;
    [UIUtils customizeTabBarButton:self.accountButton];
    [UIUtils customizeTabBarButton:self.campaignButton];
    [UIUtils customizeTabBarButton:self.analyticsButton];
    [self.accountButton setTag:ACCOUNT_BUTTON_TAG];
    [self.analyticsButton setTag:ANALYTICS_BUTTON_TAG];
    [self.accountButton addTarget:self
                           action:@selector(switchStoryBoard:)
                 forControlEvents:UIControlEventTouchUpInside];
    [self.analyticsButton addTarget:self
                             action:@selector(switchStoryBoard:)
                   forControlEvents:UIControlEventTouchUpInside];
}


#pragma mark - Table view data source

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    // Return the number of rows in the section.
    
    return [[Models campaignParamsArray] count];
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString *cellIdentifier = @"AnalyticsCell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier];
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellIdentifier];
    }
    
    cell.textLabel.text = [Models campaignParamsArray][indexPath.row];
    
    return cell;
}

- (void)switchStoryBoard:(UIButton *)sender {
    NSString *storyBoard = [Models mainViewNamesArray][sender.tag];
    NSString *identifier = [Models mainViewControllerNamesArray][sender.tag];
    UIViewController *viewController = [UIUtils jumpToStoryBoard:storyBoard
                                                  withIdentifier:identifier];
    [self.navigationController pushViewController:viewController animated:YES];
    
}

- (void)switchViewController:(NSIndexPath *)indexPath {
    NSString *identifier = [Models campaignViewControllersArray][indexPath.row];
    UIViewController *viewController = [self.storyboard instantiateViewControllerWithIdentifier:identifier];
    [self.navigationController pushViewController:viewController animated:YES];
}


-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    [self switchViewController:indexPath];
}

@end
