//
//  MainViewController.h
//  HTML5App
//
//  Created by Andrew Lim on 6/3/14.
//  Copyright (c) 2014 Andrew Lim. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CommonViewController.h"
@interface MainViewController : CommonViewController
@property (nonatomic,assign) UIWebView* webView;
@property (nonatomic,assign) UIActivityIndicatorView* activityIndicator;
@end
