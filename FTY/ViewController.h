//
//  ViewController.h
//  FTY
//
//  Created by XiaoYao on 7/9/15.
//  Copyright (c) 2015 XiaoYao. All rights reserved.
//

#import <UIKit/UIKit.h>
#include "REFrostedViewController.h"

@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UITextField *email;
@property (weak, nonatomic) IBOutlet UITextField *password;

@property (strong, nonatomic) UIPanGestureRecognizer *gesture;


@end

