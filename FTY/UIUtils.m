//
//  UIUtils.m
//  FTY
//
//  Created by XiaoYao on 7/9/15.
//  Copyright (c) 2015 XiaoYao. All rights reserved.
//

#import "UIUtils.h"

@implementation UIUtils

#define BUTTON_BACKGROUND_COLOR [UIColor colorWithRed:254.0/255.0 green:91.0/255.0 blue:123.0/255.0 alpha:1]
#define BUTTON_TEXT_COLOR [UIColor whiteColor]

+ (void)customizeButton:(UIButton *)button {
    [button setTitleColor:BUTTON_TEXT_COLOR forState:UIControlStateNormal];
    [button setBackgroundColor:BUTTON_BACKGROUND_COLOR];
    button.layer.cornerRadius = 5;
}

+ (void)customizeTabBarButton:(UIButton *)button {
    [button setTitleColor:BUTTON_BACKGROUND_COLOR forState:UIControlStateNormal];
    [button setBackgroundColor:BUTTON_TEXT_COLOR];
    button.layer.cornerRadius = 5;
}


+ (void)popAlert:(NSString *)message {
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:nil message:message delegate:self cancelButtonTitle:@"OK" otherButtonTitles:nil, nil];
    [alert show];
}

+ (UIViewController *)jumpToStoryBoard:(NSString *)storyBoardName withIdentifier:(NSString *)identifier {
    UIStoryboard *storyBoard = [UIStoryboard storyboardWithName:storyBoardName bundle:nil];
    UIViewController *viewController = [storyBoard instantiateViewControllerWithIdentifier:identifier];
    return viewController;
}


@end
