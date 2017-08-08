//
//  ViewController.h
//  FirebaseAuth
//
//  Created by Thobio Joseph on 08/08/17.
//  Copyright © 2017 Love2Code. All rights reserved.
//

#import <UIKit/UIKit.h>
@import Firebase;
@import GoogleSignIn;

@interface ViewController : UIViewController <GIDSignInUIDelegate,UITextFieldDelegate>
- (IBAction)signOutButton:(id)sender;

@property (strong, nonatomic) IBOutlet UITextField *emailIdTF;
@property (strong, nonatomic) IBOutlet UITextField *passwordTF;
- (IBAction)emailSiginAction:(id)sender;

@end

