//
//  Models.m
//  FTY
//
//  Created by XiaoYao on 7/10/15.
//  Copyright (c) 2015 XiaoYao. All rights reserved.
//

#import "Models.h"

@implementation Models

#pragma mark - Main Views
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

#pragma mark - Account Table
+ (NSArray *)accountTableCellNamesArray {
    static NSArray *accountTableCellNamesArray = nil;
    if (accountTableCellNamesArray == nil) {
        accountTableCellNamesArray = @[@"Profile", @"Push Notifications", @"Payment"];
    }
    return accountTableCellNamesArray;
}

#pragma mark - Campaign Table
+ (NSArray *)campaignParamsArray {
    static NSArray *campaignParamsArray = nil;
    if (campaignParamsArray == nil) {
        campaignParamsArray = @[@"key words", @"Budget", @"Platform", @"Basic Targeting Params", @"Advanced Targeting Params"];
    }
    return campaignParamsArray;
}

+ (NSArray *)campaignViewControllersArray {
    static NSArray *campaignParamsArray = nil;
    if (campaignParamsArray == nil) {
        campaignParamsArray = @[@"CampaignKeywordsViewController",
                                @"CampaignBudgetViewController",
                                @"CampaignPlatformViewController",
                                @"CampaignBasicTargetViewController",
                                @"CampaignAdvacedTargetViewController"];
    }
    return campaignParamsArray;
}

+ (NSArray *)platformChoicesArray {
    static NSArray *plantformChoicesArray = nil;
    if (plantformChoicesArray == nil) {
        plantformChoicesArray = @[@"Google", @"Facebook", @"Twitter", @"Pinterest"];
    }
    return plantformChoicesArray;
}

+ (NSArray *)basicTargetingParamsArray {
    static NSArray *basicTargetingParamsArray = nil;
    if (basicTargetingParamsArray == nil) {
        basicTargetingParamsArray = @[@"Demographics", @"Location", @"Interest", @"Mobile", @"placement"];
    }
    return basicTargetingParamsArray;
}

+ (NSArray *)advancedTargetingParamsArray {
    static NSArray *advancedTargetingParamsArray = nil;
    if (advancedTargetingParamsArray == nil) {
        advancedTargetingParamsArray = @[@"Interests", @"Behaviors", @"Education and workplace", @"Additional"];
    }
    return advancedTargetingParamsArray;
}

#pragma mark - Analytics Table
+ (NSArray *)analyticsTableCellNamesArray {
    static NSArray *accountTableCellNamesArray = nil;
    if (accountTableCellNamesArray == nil) {
        accountTableCellNamesArray = @[@"cell 0", @"cell 1", @"cell 2"];
    }
    return accountTableCellNamesArray;
}

@end












