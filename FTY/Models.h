//
//  Models.h
//  FTY
//
//  Created by XiaoYao on 7/10/15.
//  Copyright (c) 2015 XiaoYao. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Models : NSObject {
    
}

// General main view names
+ (NSArray *)mainViewNamesArray;
+ (NSArray *)mainViewControllerNamesArray;

// Account table
+ (NSArray *)accountTableCellNamesArray;

// Campaign table
+ (NSArray *)campaignParamsArray;
+ (NSArray *)campaignViewControllersArray;
+ (NSArray *)platformChoicesArray;
+ (NSArray *)basicTargetingParamsArray;
+ (NSArray *)advancedTargetingParamsArray;

@end
