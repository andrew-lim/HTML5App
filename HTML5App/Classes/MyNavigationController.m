//
//  MyNavigationController.m
//  HTML5App
//
//  Created by Andrew Lim on 4/5/15.
//  Copyright (c) 2015 Andrew Lim. All rights reserved.
//

#import "MyNavigationController.h"

@interface MyNavigationController ()

@end

@implementation MyNavigationController

- (BOOL)shouldAutorotate
{
    return self.topViewController.shouldAutorotate;
}
- (NSUInteger)supportedInterfaceOrientations
{
    return self.topViewController.supportedInterfaceOrientations;
}


@end
