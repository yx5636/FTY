//
//  CampaignKeywordsViewController.m
//  FTY
//
//  Created by XiaoYao on 7/10/15.
//  Copyright (c) 2015 XiaoYao. All rights reserved.
//

#import "CampaignKeywordsViewController.h"
#import "Models.h"
#import "UIUtils.h"

@interface CampaignKeywordsViewController ()

@end

@implementation CampaignKeywordsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.tableView.delegate = self;
    self.tableView.dataSource = self;
    self.tableView.opaque = NO;
}

//- (void)switchViewController:(UIButton *)sender {
//    NSString *identifier = [Models mainViewControllerNamesArray][sender.tag];
//    UIViewController *viewController = [self.storyboard instantiateViewControllerWithIdentifier:identifier];
//    [self.navigationController pushViewController:viewController animated:YES];
//}
//

#pragma mark - Table view data source

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    // Return the number of rows in the section.
    
    return [[Models campaignParamsArray] count];
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString *cellIdentifier = @"KeywordsCell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier];
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellIdentifier];
    }
    
    return cell;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
}




@end
