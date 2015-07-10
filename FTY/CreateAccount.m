//
//  CreateAccount.m
//  FTY
//
//  Created by XiaoYao on 7/9/15.
//  Copyright (c) 2015 XiaoYao. All rights reserved.
//

#import "CreateAccount.h"
#import "CustomizedButton.h"
#import "UIUtils.h"


@interface CreateAccount() <UITextFieldDelegate>

@property (weak, nonatomic) IBOutlet CustomizedButton *submitButton;

@end

@implementation CreateAccount

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [CustomizedButton customizeButton:self.submitButton];
    
    self.firstName.delegate = self;
    self.lastName.delegate = self;
    self.email.delegate = self;
    self.password.delegate = self;
    self.confirmPassword.delegate = self;
    
    self.password.secureTextEntry = YES;
    self.confirmPassword.secureTextEntry = YES;
}


- (IBAction)submit:(id)sender {
    if (![self.firstName.text length]) {
        [UIUtils popAlert:@"first name is required!"];
    } else if (![self.lastName.text length]) {
        [UIUtils popAlert:@"last name is required!"];
    } else if (![self.email.text length]) {
        [UIUtils popAlert:@"email is required!"];
    } else if (![self.password.text length]) {
        [UIUtils popAlert:@"password is required!"];
    } else if (![self.password.text isEqualToString:self.confirmPassword.text]) {
        [UIUtils popAlert:@"please type in the same password!"];
    } else {
        // check if name satisfied other constraints: no special chars, length
        // check if user with this email valid, already exists
        // create new user in the data base
    }
}

#pragma mark - Textfield

- (BOOL)textFieldShouldReturn:(UITextField *)textField {
    [textField resignFirstResponder];
    return YES;
}


@end
