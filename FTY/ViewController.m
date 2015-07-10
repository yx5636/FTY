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

@interface ViewController () <UITextFieldDelegate>
@property (weak, nonatomic) IBOutlet CustomizedButton *loginButton;
@property (weak, nonatomic) IBOutlet CustomizedButton *createAccountButton;

@end

@implementation ViewController

#pragma mark - Initialization

- (void)secureTextField:(UITextField *)textField {
    textField.secureTextEntry = YES;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    [CustomizedButton customizeButton:self.loginButton];
    [CustomizedButton customizeButton:self.createAccountButton];
    self.email.delegate = self;
    self.password.delegate = self;
    [self secureTextField:self.password];
    self.password.secureTextEntry = YES;
}

#pragma mark - Button Actions

- (IBAction)login:(UIButton *)sender {
    
    
}


- (IBAction)createAccount:(UIButton *)sender {
    UIStoryboard *storyBoard = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    CreateAccount *createAccountVC = [storyBoard instantiateViewControllerWithIdentifier:@"CreateAccount"];
    [self.navigationController pushViewController:createAccountVC animated:YES];
}


#pragma mark - Textfield

- (BOOL)textFieldShouldReturn:(UITextField *)textField {
    [textField resignFirstResponder];
    return YES;
}


@end
