//
//  CommonViewController.m
//  HTML5App
//
//  Created by Andrew Lim on 6/3/14.
//  Copyright (c) 2014 Andrew Lim. All rights reserved.
//

#import "CommonViewController.h"

@interface CommonViewController ()

@end

@implementation CommonViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

-(void) alert:(NSString*) msg
        title:(NSString*) title {
    UIAlertView *alert = [[[UIAlertView alloc]
                           initWithTitle: title
                           message: msg
                           delegate: nil
                           cancelButtonTitle:@"Okay"
                           otherButtonTitles:nil] autorelease];
    [alert show];
}

// For iOS7
- (BOOL)prefersStatusBarHidden {
    return YES;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return NO;
}


@end
