//
//  AppDelegate.h
//  FirebaseAuth
//
//  Created by Thobio Joseph on 08/08/17.
//  Copyright © 2017 Love2Code. All rights reserved.
//

#import <UIKit/UIKit.h>
@import Firebase;
@import GoogleSignIn;

@interface AppDelegate : UIResponder <UIApplicationDelegate, GIDSignInDelegate>

@property (strong, nonatomic) UIWindow *window;


@end

