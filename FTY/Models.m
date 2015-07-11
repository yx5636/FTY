//
//  Models.m
//  FTY
//
//  Created by XiaoYao on 7/10/15.
//  Copyright (c) 2015 XiaoYao. All rights reserved.
//

#import "Models.h"

@implementation Models

+ (NSArray *)mainViewNamesArray {
    static NSArray *mainViewNamesArray = nil;
    if (mainViewNamesArray == nil) {
        mainViewNamesArray = @[@"Account", @"Campaign", @"Analytics"];
    }
    return mainViewNamesArray;
}

+ (NSArray *)mainViewControllerNamesArray {
    static NSArray *mainViewControllerNamesArray = nil;
    if (mainViewControllerNamesArray == nil) {
        mainViewControllerNamesArray = @[@"AccountViewController", @"CampaignViewController", @"AnalyticsViewController"];
    }
    return mainViewControllerNamesArray;
}


@end
