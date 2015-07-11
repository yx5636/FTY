//
//  RootViewController.m
//  FTY
//
//  Created by XiaoYao on 7/10/15.
//  Copyright (c) 2015 XiaoYao. All rights reserved.
//

#import "RootViewController.h"

@implementation RootViewController

- (void)awakeFromNib {
    self.contentViewController = [self.storyboard instantiateViewControllerWithIdentifier:@"NavigationController"];
    self.menuViewController = [self.storyboard instantiateViewControllerWithIdentifier:@"MenuViewController"];
}

@end
