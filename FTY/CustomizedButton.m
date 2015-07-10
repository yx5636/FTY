//
//  CustomizedButton.m
//  FTY
//
//  Created by XiaoYao on 7/9/15.
//  Copyright (c) 2015 XiaoYao. All rights reserved.
//

#import "CustomizedButton.h"

@implementation CustomizedButton

#define BUTTON_BACKGROUND_COLOR [UIColor colorWithRed:254.0/255.0 green:91.0/255.0 blue:123.0/255.0 alpha:1]
#define BUTTON_TEXT_COLOR [UIColor whiteColor]

+ (void)customizeButton:(UIButton *)button {
    [button setTitleColor:BUTTON_TEXT_COLOR forState:UIControlStateNormal];
    [button setBackgroundColor:BUTTON_BACKGROUND_COLOR];
    button.layer.cornerRadius = 5;
}


@end
