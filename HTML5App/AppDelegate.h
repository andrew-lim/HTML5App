//
//  AppDelegate.h
//  HTML5App
//
//  Created by Andrew Lim on 6/3/14.
//  Copyright (c) 2014 Andrew Lim. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MainViewController.h"
@interface AppDelegate : UIResponder <UIApplicationDelegate>
@property (strong, nonatomic) UIWindow *window;
@property (retain, nonatomic) MainViewController *mainViewController;
@property (retain, nonatomic) UINavigationController *nav;
@end
