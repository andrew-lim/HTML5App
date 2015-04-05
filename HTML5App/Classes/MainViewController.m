//
//  MainViewController.m
//  HTML5App
//
//  Created by Andrew Lim on 6/3/14.
//  Copyright (c) 2014 Andrew Lim. All rights reserved.
//

#import "MainViewController.h"

@interface MainViewController () <UIWebViewDelegate>
@end

@implementation MainViewController

-(void) viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    self.navigationController.navigationBarHidden = YES;
    [self makeWebView];
}

-(void) makeWebView {
    if (self.webView) {
        return;
    }

    CGRect frame = self.view.frame;

    self.webView = [[[UIWebView alloc] initWithFrame:frame] autorelease];
    self.webView.backgroundColor = [UIColor clearColor];
    self.webView.opaque = NO ;
    self.webView.hidden = YES ;
    self.webView.scrollView.bounces = NO;
    self.webView.delegate = self ;

    NSString* htmlPath = [[NSBundle mainBundle] pathForResource:@"jquery-index" ofType:@"html" inDirectory:@"HTML5"];
    if (htmlPath == nil) {
        [self alert:@"Could not find jquery-index.html in resource bundle" title:nil];
        return;
    }
    NSURL* htmlURL = [NSURL fileURLWithPath:htmlPath];
    NSURLRequest* request = [NSURLRequest requestWithURL:htmlURL];
    [self.webView loadRequest:request];

    [self.view addSubview:self.webView];
}

#pragma mark - WebView Delegates

- (void)webViewDidStartLoad:(UIWebView *)webView {
    if (self.activityIndicator == nil) {
        self.activityIndicator = [[[UIActivityIndicatorView alloc] initWithActivityIndicatorStyle:UIActivityIndicatorViewStyleGray] autorelease];
        [self.view addSubview:self.activityIndicator];
    }
    self.activityIndicator.center = self.webView.center;

    [self.activityIndicator startAnimating];
    self.webView.hidden = YES ;
}

- (void)webViewDidFinishLoad:(UIWebView *)webView {
    [self.activityIndicator stopAnimating];
    self.webView.hidden = NO ;
}

- (void)webView:(UIWebView *)webView didFailLoadWithError:(NSError *)error {
    [self.activityIndicator stopAnimating];
    if ([error code] != NSURLErrorCancelled) {
        [self alert:@"Error loading webpage." title:nil];
        NSLog( @"error = %@", error );
    }
}

#pragma mark - Orientation

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return YES;
}

- (BOOL)shouldAutorotate
{
    self.webView.frame = self.view.bounds;
    return YES;
}

- (NSUInteger)supportedInterfaceOrientations
{
    return UIInterfaceOrientationMaskAll;
}

@end
