//
//  ViewController.m
//  FirebaseAuth
//
//  Created by Thobio Joseph on 08/08/17.
//  Copyright © 2017 Love2Code. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [GIDSignIn sharedInstance].uiDelegate = self;
    _emailIdTF.delegate = self;
    _passwordTF.delegate = self;
    
}
-(BOOL)textFieldShouldReturn:(UITextField *)textField{
    [textField resignFirstResponder];
    return YES;
}

- (IBAction)signOutButton:(id)sender {
    [[GIDSignIn sharedInstance] signOut];
}
- (IBAction)emailSiginAction:(id)sender {
    [[FIRAuth auth] signInWithEmail:self.emailIdTF.text password:self.passwordTF.text completion:^(FIRUser * _Nullable user, NSError * _Nullable error) {
        if (user == NULL) {
            [[FIRAuth auth] createUserWithEmail:self.emailIdTF.text password:self.passwordTF.text completion:^(FIRUser * _Nullable user, NSError * _Nullable error) {
                
                 }];
        }
    }];
   }
@end
