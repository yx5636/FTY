//
//  UIUtils.h
//  FTY
//
//  Created by XiaoYao on 7/9/15.
//  Copyright (c) 2015 XiaoYao. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIUtils : UIViewController

+ (void)customizeButton:(UIButton *)button;
+ (void)customizeTabBarButton:(UIButton *)button;
+ (void)popAlert:(NSString *)message;
+ (UIViewController *)jumpToStoryBoard:(NSString *)storyBoardName withIdentifier:(NSString *)identifier;
@end
