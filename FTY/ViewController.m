//
//  ViewController.m
//  FTY
//
//  Created by XiaoYao on 7/9/15.
//  Copyright (c) 2015 XiaoYao. All rights reserved.
//

#import "ViewController.h"
#import "CreateAccount.h"
#import "CustomizedButton.h"
#import "UIUtils.h"

@interface ViewController () <UITextFieldDelegate>
@property (weak, nonatomic) IBOutlet CustomizedButton *loginButton;
@property (weak, nonatomic) IBOutlet CustomizedButton *createAccountButton;

@end

@implementation ViewController

#pragma mark - Initialization


- (void)viewDidLoad {
    [super viewDidLoad];
    self.gesture = [[UIPanGestureRecognizer alloc] init];

    [CustomizedButton customizeButton:self.loginButton];
    [CustomizedButton customizeButton:self.createAccountButton];
    self.email.delegate = self;
    self.password.delegate = self;
    self.password.secureTextEntry = YES;
}

#pragma mark - Button Actions

// TODO: fetch email and password from database
- (IBAction)login:(UIButton *)sender {
    if (![self.email.text length] || ![self.password.text length]) {
        [UIUtils popAlert:@"email and password are required!"];
    } else {
        // check email and password match by fetching database
    }
}

- (IBAction)createAccount:(UIButton *)sender {
    UIStoryboard *storyBoard = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    CreateAccount *createAccountVC = [storyBoard instantiateViewControllerWithIdentifier:@"CreateAccount"];
    [self.navigationController pushViewController:createAccountVC animated:YES];
}


- (IBAction)displayMenuView:(UIBarButtonItem *)sender {
    [self.view endEditing:YES];
    [self.frostedViewController.view endEditing:YES];
    NSLog(@"%@", self.frostedViewController);
    
    // Present the view controller
    //
    [self.frostedViewController presentMenuViewController];
}


#pragma mark - Textfield

- (BOOL)textFieldShouldReturn:(UITextField *)textField {
    [textField resignFirstResponder];
    return YES;
}


@end
